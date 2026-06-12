Import-Module ServerManager

# Test ob Installation geht
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -WhatIf

# Installation
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature 

foreach ($Server in $Server){
    Install-WindowsFeature -Name Web-Server -ComputerName $Server -IncludeAllSubFeature
}
