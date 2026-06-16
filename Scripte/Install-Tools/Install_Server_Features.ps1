# Author: Rainer Pardon
# Titel: 
# Version: 1.0
# Datum: 16.06.2026

Import-Module ServerManager

# Test ob Installation geht
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -WhatIf

# Installation
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature 

foreach ($Server in $Server){
    Install-WindowsFeature -Name Web-Server -ComputerName $Server -IncludeAllSubFeature
}
