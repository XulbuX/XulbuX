# ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1

# NOTE: This config is for PowerShell from https://aka.ms/powershell, not Windows PowerShell.


######################################## STARSHIP ########################################

try {

    # Initialize starship:
    Invoke-Expression (&starship init powershell)
    Enable-TransientPrompt

    # Display simplified prompt function:
    function Invoke-Starship-TransientFunction {
        # Clear detailed prompt:
        [Console]::SetCursorPosition(0, [Math]::Max(0, $host.UI.RawUI.CursorPosition.Y))
        [Console]::Write("`e[J")
        # Return simplified prompt:
        $output = &starship module character
        $stripped = $output -replace "`e\[[0-9;]*m", ""
        "`e[1;35m$stripped`e[0m"
    }

} catch {}


###################################### INTELLISENSE ######################################
# Install-Module -Name PSReadLine -Force

try {

    # enable prediction based on command history:
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -PredictionViewStyle InlineView

    # Keybindings for tab completion:
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

    # Accept next word of inline suggestion:
    Set-PSReadLineKeyHandler -Key Shift+RightArrow -Function AcceptNextSuggestionWord

    # Paste as single undo unit:
    Set-PSReadLineKeyHandler -Key Ctrl+V -Function Paste

} catch {}


######################################## HISTORY #########################################

try {

    # Keybindings for history search:
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

    # Move cursor to end of line when recalling history on empty line:
    Set-PSReadLineKeyHandler -Key UpArrow -ScriptBlock {
        [Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchBackward()
        [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
    }
    Set-PSReadLineKeyHandler -Key DownArrow -ScriptBlock {
        [Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchForward()
        [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
    }

    # Command history browser:
    Set-PSReadLineKeyHandler -Chord "Ctrl+h" -ScriptBlock {
        $commands = Get-Content (Get-PSReadLineOption).HistorySavePath | Select-Object -Unique
        [array]::Reverse($commands)

        $selectedCommand = $commands | Out-GridView -Title "Command History" -PassThru

        if ($selectedCommand) {
            [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
            [Microsoft.PowerShell.PSConsoleReadLine]::Insert($selectedCommand)
        }
    }

} catch {}
