@echo off

@set BIOS.ROM=PA70Hx.16 
@if exist MSDM.BIN del MSDM.BIN   	
					
::======================= 		
:: #define NG          0  		
:: #define PASS        1  		
:: #define ERR_FILE    2  		
:: #define ERR_NOMSDM  3  		
:: #define ERR_ACPI    4  		
:: #define ERR_CLEVO   5  		
::======================= 		
GMSDM.exe 				
					
if errorlevel 5 goto NoMessage    	
if errorlevel 4 goto WithoutMessage   	
if errorlevel 3 goto NoMessage		
if errorlevel 2 goto SaveMessageFail  	
if errorlevel 1 goto WithMessage  	
if errorlevel 0 goto Fail 		
					
goto  Help    				
					
:NoMessage				
goto    WithoutMessage    		
					
:SaveMessageFail  			
goto    End   				
					
:Fail 					
goto    End   				
					
:Help 					
goto    End   				
					
:WithMessage  				
					
AFUDOS.exe %BIOS.ROM% /p /b /n /l 	
OAIDDOS MSDM.bin /OA  			
@if exist MSDM.BIN del MSDM.BIN   	
AFUDOS.exe /s /shutdown   		
goto   End    				
					
:WithoutMessage   			
					
AFUDOS.exe %BIOS.ROM% /p /b /n /l 	
AFUDOS.exe /s /shutdown   		
					
goto   End    				
:End  					
@echo -on       			


