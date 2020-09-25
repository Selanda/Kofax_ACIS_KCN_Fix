net stop "ACIS Remote Synchronization Agent"
net stop "Kofax Capture Export"
net stop "Kofax Capture Recognition Server"
net stop "Ascent Capture Service"

mkdir C:\ProgramData\Kofax\Capture\Server\DB\Lic_Old
move "C:\ProgramData\Kofax\Capture\Server\DB\*.ALX" C:\ProgramData\Kofax\Capture\Server\DB\Lic_Old

reg delete "HKEY_USERS\.DEFAULT\Software\Kofax Image Products\Ascent Capture" /v CodeBase /f
reg delete "HKEY_USERS\.DEFAULT\Software\Kofax Image Products\Ascent Capture" /v CLSID /f

net start "Ascent Capture Service"
net stop "ACIS Remote Synchronization Agent"
net stop "Kofax Capture Recognition Server"
net stop "Kofax Capture Export"