# Create a random timer between 5 and 15 min with auto reset enabled.

$timer = [System.Timers.Timer]::new((Get-Random -Minimum 300000 -Maximum 900000))
$timer.AutoReset = $true

# Create an event that execute script block when timer finish (set specified process to foreground then press "p")

Register-ObjectEvent -InputObject $timer -EventName Elapsed -SourceIdentifier afk -Action {
    [void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic") 
    [Microsoft.VisualBasic.Interaction]::AppActivate("LOST ARK")
    [System.Windows.Forms.SendKeys]::SendWait('p')
}

# Start the timer

$timer.start()
