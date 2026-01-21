# ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1

# NOTE: This config is for PowerShell from https://aka.ms/powershell, not Windows PowerShell.

######################################## STARSHIP ########################################

# INITIALIZE STARSHIP
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

# TELL STARSHIP TO USE ITS `character` FOR SIMPLIFIED PROMPT
function Invoke-Starship-TransientFunction { &starship module character }

###################################### INTELLISENSE ######################################
# Install-Module -Name PSReadLine -Force

# ENABLE PREDICTION BASED ON COMMAND HISTORY
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView

# KEYBINDINGS FOR TAB COMPLETION AND HISTORY SEARCH
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
