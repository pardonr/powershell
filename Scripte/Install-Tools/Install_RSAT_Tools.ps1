# Author: Rainer Pardon
# Titel Rsat-Tools installieren
# Version: 1.01
# Datum: 18.06.2026

# Falls eine Polixy Einstellung die Installation verhindert
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

# Verfügbare RSAT Tools anzeigen
Get-WindowsCapability -Name RSAT* -Online

# Einzelne RSAT Tools installieren (z.B. Active Directory
Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0


# Alle RSAT Tools installieren
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online

