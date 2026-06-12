# Installierte Software anzeigen lassen
Get-CimInstance -class Win32_Product

Get-CimInstance -class Win32_Product | Select-Object *

# Software wird gesucht und deinstalliert. Hier z.B. alles mit VMware
Get-CimInstance -class Win32_Product | Where-Object {$_.Name -like "*VMW*"} | Invoke-CimMethod -MethodName Uninstall

# Software installieren
Get-CimInstance -class Win32_Product -MethodName Install -Arguments @{packageLocation_'Path .... Software'}

# Update Software
Get-CimInstance -class Win32_Product -MethodName Update -Arguments @{packageLocation_'Path .... Software'}
