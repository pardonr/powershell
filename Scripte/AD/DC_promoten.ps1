# Author: Rainer Pardon
# Titel DC promoten
# Version: 1.0
# Datum: 16.06.2026


$dsrmPassword = ConvertTo-SecureString "Phoebe_3Q" -AsPlainText -Force

Import-Module ADDSDeployment

Install-ADDSDomainController `
-NoGlobalCatalog:$false `
-CreateDnsDelegation:$false `
-CriticalReplicationOnly:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainName "corp.pri" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-ReplicationSourceDC "dc01.corp.pri" `
-SiteName "Default-First-Site-Name" `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true `
-SafeModeAdministratorPassword $dsrmPassword