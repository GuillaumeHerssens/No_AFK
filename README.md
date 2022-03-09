# Description

Anti AFK script to prevent logout in online games.

Script send a key stroke (default "p") every 5 to 15 min to the specified app (default : "LOST ARK")

# Config
Change "LOST ARK" to appropriate app name on line 10 : 

``[Microsoft.VisualBasic.Interaction]::AppActivate("LOST ARK")``

Change keystroke on line 11 : 

``[System.Windows.Forms.SendKeys]::SendWait('p')``

# Stop

Close the powershell session to stop.

You can also type this command in the powershell session your started the script in :

``Get-EventSubscriber -SourceIdentifier afk | Unregister-Event``
