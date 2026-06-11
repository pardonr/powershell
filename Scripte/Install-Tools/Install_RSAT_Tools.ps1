# Author: Rainer Pardon
# Titel Rsat-Tools installieren
# Version: 1.0
# Datum: 11.06.2026


Add-WindowsFeature -Name "RSAT -AD-Powershell"
Import-Module ActiveDirectory

(Get-Command -Module ActiveDirectory).Count