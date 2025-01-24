# Useful Commands for Visual Studio Code

### Install a list of extensions from a text file
For Linux/Mac:
```bash
while read -r extension; do code --install-extension "$extension"; done < extensions.txt
```
For Windows (PowerShell):
```powershell
Get-Content extensions.txt | ForEach-Object { code --install-extension $_ }
```
For Windows (Command Prompt):
```cmd
for /F %e in (extensions.txt) do code --install-extension %e
```

### Uninstall all extensions
For Linux/Mac:
```bash
code --list-extensions | xargs -n 1 code --uninstall-extension
```
For Windows (PowerShell):
```powershell
code --list-extensions | ForEach-Object { code --uninstall-extension $_ }
```
For Windows (Command Prompt):
```cmd
for /F %e in ('code --list-extensions') do code --uninstall-extension %e
```