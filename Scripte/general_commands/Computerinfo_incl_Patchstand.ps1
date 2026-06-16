# Author: Rainer Pardon
# Titel: Computerinfo_incl_Patchstand
# Version: 1.0
# Datum: 16.06.2026

Get-ComputerInfo | Select-Object OsName .\Default.rdp

Get-CimInstance -Class Win32_ComputerSystem | Select-Object *
Get-CimInstance -Class Win32_ComputerSystem | Select-Object  TotalPhysicalMemory
((Get-CimInstance -Class Win32_ComputerSystem | Select-Object  TotalPhysicalMemory).TotalPhysicalMemory) / 1000000000

# Welche und wieviel Platten installiert
Get-CimInstance -ClassName Win32_LogicalDisk 

# Welche Patche installiert?
Get-CimInstance -Class Win32_QuickFixEngineering

(Get-CimInstance -Class Win32_QuickFixEngineering).HotFixID