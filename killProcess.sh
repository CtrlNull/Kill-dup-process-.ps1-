##### POWERSHELL SCRIPT

### This is a general kill process, just a good reference for me to create desktop app for a specific process as a 1x step process
# C:\Users*\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
# C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -ExecutionPolicy Bypass -File C:\Users\Ctrl_Null\repos\Test.ps1

$ISSProc = Get-Process w3wp

if ($ISSProc -ne $null) {
	echo 'Stopping ISS Worker(w3wp)'
	$ISSProc.Kill()
	echo 'Successfully Killed ISS Worker(w3wp)'
    Read-Host "Press any key to exit..."
    stop-process -Id $PID
} else {
  echo 'No running instance of ISS Worker(w3wp)'
}

