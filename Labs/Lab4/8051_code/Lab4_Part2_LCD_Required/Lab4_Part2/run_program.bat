taskkill /FI "WINDOWTITLE eq COM19*" /T /F


echo "Running batch file"
set BIN_DIR="./bin/Release"
set BIN="Lab4_Part2"
"C:\Program Files (x86)\Atmel\Flip 3.4.7\bin\batchisp.exe" -device at89c51rc2 -hardware RS232 -port COM19 -baudrate 115200 -operation erase f memory flash loadbuffer ./%BIN_DIR%/%BIN%.hex program start RESET 0x0000
IF %ERRORLEVEL% NEQ 0 (
   ECHO Batchisp failed. Error code: %ERRORLEVEL%
   EXIT /B 1
)
start /b "" "C:\Program Files (x86)\teraterm\ttermpro.exe" .\ttermpro.exe /C=19 /BAUD=9600