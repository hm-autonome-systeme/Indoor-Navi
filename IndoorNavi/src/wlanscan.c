/*
 * wlanscan.c
 *
 *  Created on: 01.05.2017
 *      Author: robert
 */


#include "../include/wlanscan.h"

//#include <iwlib.h>


#define IW_SCAN_HACK		0x8000


/*
 * Print one element from the scanning results
 */
static inline void
print_scanning_token(struct stream_descr *	stream,	/* Stream of events */
		     struct iw_event *		event,	/* Extracted token */
		     struct iwscan_state *	state,
		     struct iw_range *	iw_range,	/* Range info */
		     int		has_range,
			 scanData_t *retScanData)
{
  char		buffer[128] = { '\0' };	/* Temporary buffer */
  int RSSIbuf=0;
  retScanData[state->ap_num -1].validScan = 0;
  /* Now, let's decode the event */
  switch(event->cmd)
    {
    case SIOCGIWAP:
    	memset(buffer, '\0', sizeof(buffer));
//      printf("          Cell %02d - Address: %s\n", state->ap_num, iw_ether_ntop(&event->u.ap_addr, buffer));

      /*printf("Test: %hhu:%hhu:%hhu:%hhu:%hhu:%hhu", buffer[0],buffer[1],buffer[2],buffer[3],
    		  buffer[4],buffer[5]); //TODO: here*/
      //ret->mac = buffer;


      //printf("\nTestprint:%d: %s\n",state->ap_num,retScanData[state->ap_num].mac);
      //retScanData++;
      state->ap_num++;
      sprintf(retScanData[state->ap_num -2 ].mac,"%s",buffer);
      retScanData[state->ap_num -2].validScan = 1;
      break;
    case SIOCGIWNWID:
      if(event->u.nwid.disabled)
	printf("                    NWID:off/any\n");
      else
	printf("                    NWID:%X\n", event->u.nwid.value);
      break;
    case SIOCGIWFREQ:
      {
	double		freq;			/* Frequency/channel */
	int		channel = -1;		/* Converted to channel */
	freq = iw_freq2float(&(event->u.freq));
	/* Convert to channel if possible */
	if(has_range)
	  channel = iw_freq_to_channel(freq, iw_range);
	iw_print_freq(buffer, sizeof(buffer),
		      freq, channel, event->u.freq.flags);
	printf("                    %s\n", buffer);
      }
      break;
    case SIOCGIWMODE:
      /* Note : event->u.mode is unsigned, no need to check <= 0 */
      if(event->u.mode >= IW_NUM_OPER_MODE)
	event->u.mode = IW_NUM_OPER_MODE;
      printf("                    Mode:%s\n",
	     iw_operation_mode[event->u.mode]);
      break;
    case SIOCGIWNAME:
      printf("                    Protocol:%-1.16s\n", event->u.name);
      break;
    case SIOCGIWESSID:
      {
	char essid[IW_ESSID_MAX_SIZE+1];
	memset(essid, '\0', sizeof(essid));
	if((event->u.essid.pointer) && (event->u.essid.length))
	  memcpy(essid, event->u.essid.pointer, event->u.essid.length);
	if(event->u.essid.flags)
	  {
	    /* Does it have an ESSID index ? */
	    if((event->u.essid.flags & IW_ENCODE_INDEX) > 1)
	      printf("                    ESSID:\"%s\" [%d]\n", essid,
		     (event->u.essid.flags & IW_ENCODE_INDEX));
	    else
	      printf("                    ESSID:\"%s\"\n", essid);
	  }
	else
	  printf("                    ESSID:off/any/hidden\n");
      }
      memcpy(retScanData[state->ap_num -2 ].essid, event->u.essid.pointer, event->u.essid.length);
      //TODO: above
      break;

    case SIOCGIWENCODE:
      {
	unsigned char	key[IW_ENCODING_TOKEN_MAX];
	if(event->u.data.pointer)
	  memcpy(key, event->u.data.pointer, event->u.data.length);
	else
	  event->u.data.flags |= IW_ENCODE_NOKEY;
	printf("                    Encryption key:");
	if(event->u.data.flags & IW_ENCODE_DISABLED)
	  printf("off\n");
	else
	  {
	    /* Display the key */
	    iw_print_key(buffer, sizeof(buffer), key, event->u.data.length,
			 event->u.data.flags);
	    printf("%s", buffer);

	    /* Other info... */
	    if((event->u.data.flags & IW_ENCODE_INDEX) > 1)
	      printf(" [%d]", event->u.data.flags & IW_ENCODE_INDEX);
	    if(event->u.data.flags & IW_ENCODE_RESTRICTED)
	      printf("   Security mode:restricted");
	    if(event->u.data.flags & IW_ENCODE_OPEN)
	      printf("   Security mode:open");
	    printf("\n");
	  }
      }
      break;
    case SIOCGIWRATE:
      if(state->val_index == 0)
	printf("                    Bit Rates:");
      else
	if((state->val_index % 5) == 0)
	  printf("\n                              ");
	else
	  printf("; ");
      iw_print_bitrate(buffer, sizeof(buffer), event->u.bitrate.value);
      printf("%s", buffer);
      /* Check for termination */
      if(stream->value == NULL)
	{
	  printf("\n");
	  state->val_index = 0;
	}
      else
	state->val_index++;
      break;
    case SIOCGIWMODUL:
      {
	unsigned int	modul = event->u.param.value;
	int		i;
	int		n = 0;
	printf("                    Modulations :");
	for(i = 0; i < IW_SIZE_MODUL_LIST; i++)
	  {
	    if((modul & iw_modul_list[i].mask) == iw_modul_list[i].mask)
	      {
		if((n++ % 8) == 7)
		  printf("\n                        ");
		else
		  printf(" ; ");
		printf("%s", iw_modul_list[i].cmd);
	      }
	  }
	printf("\n");
      }
      break;
    case IWEVQUAL:
    	RSSIbuf =0;
      iw_print_stats(buffer, sizeof(buffer), &event->u.qual, iw_range, has_range);
      //iw_print_stats(buffer, sizeof(buffer), &event->u.qual, iw_range, has_range,&RSSIbuf);
      printf("%s\n", buffer);
      retScanData[state->ap_num -2].SSID = RSSIbuf;
      break;
#ifndef WE_ESSENTIAL
    case IWEVGENIE:
      /* Informations Elements are complex, let's do only some of them */
      //iw_print_gen_ie(event->u.data.pointer, event->u.data.length);
      break;
#endif	/* WE_ESSENTIAL */
    case IWEVCUSTOM:
      {
	char custom[IW_CUSTOM_MAX+1];
	if((event->u.data.pointer) && (event->u.data.length))
	  memcpy(custom, event->u.data.pointer, event->u.data.length);
	custom[event->u.data.length] = '\0';
	printf("                    Extra:%s\n", custom);
      }
      break;
    default:
      printf("(Unknown Wireless Token 0x%04X)\n", event->cmd);
   }	/* switch(event->cmd) */
}

/*------------------------------------------------------------------*/
/*
 * Perform a scanning on one device
 */
int
print_scanning_info(int		skfd,
		    char *	ifname,
		    char *	args[],		/* Command line args */
		    int		count,		/* Args count */
			scanData_t *retScanData)
{
  struct iwreq		wrq;
  struct iw_scan_req    scanopt;		/* Options for 'set' */
  int			scanflags = 0;		/* Flags for scan */
  unsigned char *	buffer = NULL;		/* Results */
  int			buflen = IW_SCAN_MAX_DATA; /* Min for compat WE<17 */
  struct iw_range	range;
  int			has_range;
  struct timeval	tv;				/* Select timeout */
  int			timeout = 15000000;		/* 15s */

  /* Avoid "Unused parameter" warning */
  args = args; count = count;

  /* Debugging stuff */
 /* if((IW_EV_LCP_PK2_LEN != IW_EV_LCP_PK_LEN) || (IW_EV_POINT_PK2_LEN != IW_EV_POINT_PK_LEN))
    {
      fprintf(stderr, "*** Please report to jt@hpl.hp.com your platform details\n");
      fprintf(stderr, "*** and the following line :\n");
      fprintf(stderr, "*** IW_EV_LCP_PK2_LEN = %zu ; IW_EV_POINT_PK2_LEN = %zu\n\n",
	      IW_EV_LCP_PK2_LEN, IW_EV_POINT_PK2_LEN);
    }
*/ //FIXME
  /* Get range stuff */
  has_range = (iw_get_range_info(skfd, ifname, &range) >= 0);

  /* Check if the interface could support scanning. */
  if((!has_range) || (range.we_version_compiled < 14))
    {
      fprintf(stderr, "%-8.16s  Interface doesn't support scanning.\n\n",
	      ifname);
      return(-1);
    }

  /* Init timeout value -> 250ms between set and first get */
  tv.tv_sec = 0;
  tv.tv_usec = 250000;

  /* Clean up set args */
  memset(&scanopt, 0, sizeof(scanopt));

  /* Parse command line arguments and extract options.
   * Note : when we have enough options, we should use the parser
   * from iwconfig... */
  while(count > 0)
    {
      /* One arg is consumed (the option name) */
      count--;

      /*
       * Check for Active Scan (scan with specific essid)
       */
      if(!strncmp(args[0], "essid", 5))
	{
	  if(count < 1)
	    {
	      fprintf(stderr, "Too few arguments for scanning option [%s]\n",
		      args[0]);
	      return(-1);
	    }
	  args++;
	  count--;

	  /* Store the ESSID in the scan options */
	  scanopt.essid_len = strlen(args[0]);
	  memcpy(scanopt.essid, args[0], scanopt.essid_len);
	  /* Initialise BSSID as needed */
	  if(scanopt.bssid.sa_family == 0)
	    {
	      scanopt.bssid.sa_family = ARPHRD_ETHER;
	      memset(scanopt.bssid.sa_data, 0xff, ETH_ALEN);
	    }
	  /* Scan only this ESSID */
	  scanflags |= IW_SCAN_THIS_ESSID;
	}
      else
	/* Check for last scan result (do not trigger scan) */
	if(!strncmp(args[0], "last", 4))
	  {
	    /* Hack */
	    scanflags |= IW_SCAN_HACK;
	  }
	else
	  {
	    fprintf(stderr, "Invalid scanning option [%s]\n", args[0]);
	    return(-1);
	  }

      /* Next arg */
      args++;
    }

  /* Check if we have scan options */
  if(scanflags)
    {
      wrq.u.data.pointer = (caddr_t) &scanopt;
      wrq.u.data.length = sizeof(scanopt);
      wrq.u.data.flags = scanflags;
    }
  else
    {
      wrq.u.data.pointer = NULL;
      wrq.u.data.flags = 0;
      wrq.u.data.length = 0;
    }

  /* If only 'last' was specified on command line, don't trigger a scan */
  if(scanflags == IW_SCAN_HACK)
    {
      /* Skip waiting */
      tv.tv_usec = 0;
    }
  else
    {
      /* Initiate Scanning */
      if(iw_set_ext(skfd, ifname, SIOCSIWSCAN, &wrq) < 0)
	{
	  if((errno != EPERM) || (scanflags != 0))
	    {
	      fprintf(stderr, "%-8.16s  Interface doesn't support scanning : %s\n\n",
		      ifname, strerror(errno));
	      return(-1);
	    }
	  /* If we don't have the permission to initiate the scan, we may
	   * still have permission to read left-over results.
	   * But, don't wait !!! */
#if 0
	  /* Not cool, it display for non wireless interfaces... */
	  fprintf(stderr, "%-8.16s  (Could not trigger scanning, just reading left-over results)\n", ifname);
#endif
	  tv.tv_usec = 0;
	}
    }
  timeout -= tv.tv_usec;

  /* Forever */
  while(1)
    {
      fd_set		rfds;		/* File descriptors for select */
      int		last_fd;	/* Last fd */
      int		ret;

      /* Guess what ? We must re-generate rfds each time */
      FD_ZERO(&rfds);
      last_fd = -1;

      /* In here, add the rtnetlink fd in the list */

      /* Wait until something happens */
      ret = select(last_fd + 1, &rfds, NULL, NULL, &tv);

      /* Check if there was an error */
      if(ret < 0)
	{
	  if(errno == EAGAIN || errno == EINTR)
	    continue;
	  //fprintf(stderr, "Unhandled signal - exiting...\n");
	  return(-1);
	}

      /* Check if there was a timeout */
      if(ret == 0)
	{
	  unsigned char *	newbuf;

	realloc:
	  /* (Re)allocate the buffer - realloc(NULL, len) == malloc(len) */
	  newbuf = realloc(buffer, buflen);
	  if(newbuf == NULL)
	    {
	      if(buffer)
		free(buffer);
	      fprintf(stderr, "%s: Allocation failed\n", __FUNCTION__);
	      return(-1);
	    }
	  buffer = newbuf;

	  /* Try to read the results */
	  wrq.u.data.pointer = buffer;
	  wrq.u.data.flags = 0;
	  wrq.u.data.length = buflen;
	  if(iw_get_ext(skfd, ifname, SIOCGIWSCAN, &wrq) < 0)
	    {
	      /* Check if buffer was too small (WE-17 only) */
	      if((errno == E2BIG) && (range.we_version_compiled > 16))
		{
		  /* Some driver may return very large scan results, either
		   * because there are many cells, or because they have many
		   * large elements in cells (like IWEVCUSTOM). Most will
		   * only need the regular sized buffer. We now use a dynamic
		   * allocation of the buffer to satisfy everybody. Of course,
		   * as we don't know in advance the size of the array, we try
		   * various increasing sizes. Jean II */

		  /* Check if the driver gave us any hints. */
		  if(wrq.u.data.length > buflen)
		    buflen = wrq.u.data.length;
		  else
		    buflen *= 2;

		  /* Try again */
		  goto realloc;
		}

	      /* Check if results not available yet */
	      if(errno == EAGAIN)
		{
		  /* Restart timer for only 100ms*/
		  tv.tv_sec = 0;
		  tv.tv_usec = 100000;
		  timeout -= tv.tv_usec;
		  if(timeout > 0)
		    continue;	/* Try again later */
		}

	      /* Bad error */
	      free(buffer);
	      fprintf(stderr, "%-8.16s  Failed to read scan data : %s\n\n",
		      ifname, strerror(errno));
	      return(-2);
	    }
	  else
	    /* We have the results, go to process them */
	    break;
	}

      /* In here, check if event and event type
       * if scan event, read results. All errors bad & no reset timeout */
    }

  if(wrq.u.data.length)
    {
      struct iw_event		iwe;
      struct stream_descr	stream;
      struct iwscan_state	state = { .ap_num = 1, .val_index = 0 };
      int			ret;

#ifdef DEBUG
      /* Debugging code. In theory useless, because it's debugged ;-) */
      int	i;
      printf("Scan result %d [%02X", wrq.u.data.length, buffer[0]);
      for(i = 1; i < wrq.u.data.length; i++)
	printf(":%02X", buffer[i]);
      printf("]\n");
#endif
      printf("%-8.16s  Scan completed :\n", ifname);
      iw_init_event_stream(&stream, (char *) buffer, wrq.u.data.length);
      do
	{
	  /* Extract an event and print it */
	  ret = iw_extract_event_stream(&stream, &iwe,
					range.we_version_compiled);
	  if(ret > 0)
	    print_scanning_token(&stream, &iwe, &state,
				 &range, has_range,retScanData);
	}
      while(ret > 0);
      printf("\n");
    }
  else
    printf("%-8.16s  No scan results\n\n", ifname);

  free(buffer);
  return(0);
}
