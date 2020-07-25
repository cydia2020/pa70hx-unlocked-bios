@echo off

set BIOSROM PA70Hx.16 
				    
if '%1' == '' then      	    
 goto flash     		    
endif   			    
				    
set BIOSROM %1  		    
				    
:flash  			    
# Check the file exist or not.      
if not exist %BIOSROM% then       
 echo The %BIOSROM% doesn't exist.
 goto end       		    
endif   			    
				    
#delete old MSDM file   	    
if exist msdm.bin then  	    
 del msdm.bin   		    
endif   			    
				    
# save MSDM     		    
GMsdmx64.efi    		    
				    
#if not %Lasterror% == 0 then     
# goto end      		    
#endif  			    
				    
# update SBIOS  		    
afuefix64 %BIOSROM% /p /b /n /l   
				    
				    
if not %Lasterror% == 0 then      
 goto end       		    
endif   			    
				    
# restore MSDM  		    
if exist msdm.bin then  	    
 oaidefix64 msdm.bin /oa	    
if not %Lasterror% == 0 then      
  goto end      		    
endif   			    
 del msdm.bin   		    
endif   			    
				    
# shutdown system       	    
afuefix64 /s /shutdown  	    
				    
:end    			    
@echo -on       		    


