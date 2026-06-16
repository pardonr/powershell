# Author: Rainer Pardon
# Titel: New Firewall Rule
# Version: 1.0
# Datum: 16.06.2026

Get-NetFirewallRule -DisplayGroup Remote*

# zeigt alle Rules für den Inbound an
Get-NetFirewallRule -Action Block -Enabled True -Direction Inbound

# Disable Rule
Disable-NetFirewallRule -Action Block -Enabled True -Direction Inbound

# Anlegen neuer Rules
New-NetFirewallRule -DisplayName "Block Outbound Port 80" -Direction Outbound -LocalPort 80 -Protocol TCP -Action Block
