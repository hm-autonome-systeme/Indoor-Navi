clear all;
close all;
clc;

%Accept a connection from any machine (IP von Raspberry PI3) on port 4013
disp ('Receiver started');

% '192.168.178.79'

t = tcpip('0.0.0.0', 1234, 'NetworkRole', 'server');


%Open a connection. This will not return until a connection is received.
disp('Waiting for connection'); 

fopen(t);
disp('Connection OK');

pause(1)

t.BytesAvailable

figure();

while(strcmp(t.status, 'open') == 1)
    
    if(t.BytesAvailable ~= 0)
        data_read = fread(t,t.BytesAvailable);
        chararray = char(data_read');
        
        if(data_read == 1)
            disp('ERROR!');
            break;
            
        else
            coord = strsplit(chararray,',');
            
            x = str2double(coord(1,1))
            y = str2double(coord(1,2))
            
            axis([0 20 0 20]);
            plot(x,y, 'c*');
            drawnow;
            hold on;
        end
    end
end


% % disconnect 
% fclose(t)
% 
% % remove from memory
% delete(t)
% 
% % remove from MATLAB workspace
% clear t