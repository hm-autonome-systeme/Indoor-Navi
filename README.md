# Indoor-Navi
Projekt autonome Systeme Indoor Navigation mit Wlan und Bluetooth


### Build and Run with Ubuntu
```bash
    $ sudo apt-get install libiw30
    $ sudo apt-get install libiw-dev
    $ sudo apt-get install wireless-tools
    $ sudo apt-get install libbluetooth-dev
```

```bash
    $ git clone https://github.com/hm-autonome-systeme/Indoor-Navi.git
    $ cd IndoorNavi
    $ mkdir build
    $ cd build
    $ cmake ..
    $ make
    $ ./src/IndoorNavi
```

### Notizen
* Blutooth anschalten  
* evtl. mit `sudo` starten, sonst hat man evlt. nicht alle Rechte  
* Wlan Treiber herausfinden mit:
    * `iw dev`  
* Im `ScanHandler.c` in `navigate` und `scanwlan` aendern  
* Bluetooth beacons:
	* FF:D3:98:1D:EC:EF 
	  MiniBeacon_01257
	* F6:91:E3:81:B9:6B 
	  MiniBeacon_01310
	* FE:2F:13:AA:54:E0 
	  MiniBeacon_01178

