function [yfinal,Rsfinal,Rshfinal] = modelDesigner(Il,Voc,VMPP,IMPP)
% This function determines the model parameters
global Isc1
yfinal = -1;
Rsfinal = -1;
Rshfinal = -1;
    for i = 1:0.1:2      % Loop through y
        Is1 = ReverseCurrentSTC(i);
        for j = 50:1:800 % Loop through Rsh
            for k = 0.005:0.001:0.02 % Loop through Rs
                % Check for the 0 voltage
                I = currentNewton(Il,0,Is1,0,k,i,300,j);
                if((abs(I - Isc1)/Isc1) < 0.5)
                    % Check for the Voc
                    I = currentNewton(Il,0,Is1,Voc,k,i,300,j);
                     if (I < 0.139)
                         disp(I)
                     end%%JUST TO MAKE SMTH MAKE SENSE
                                        %%DELETE LATER
                    if(abs(I) < 0.138)
                        % Check for VMPP
                        I = currentNewton(Il,0,Is1,VMPP,k,i,300,j);
                        if( abs(I - IMPP)/IMPP < 0.5 )
                            yfinal = i;
                            Rshfinal = j;
                            Rsfinal = k;
              
                        end
                    end
                end
    
            end
        end
    end
    disp('HELLO');
end