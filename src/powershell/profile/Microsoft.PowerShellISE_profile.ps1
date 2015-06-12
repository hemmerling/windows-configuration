Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypass
# Pester
Unblock-File C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules\Pester\Functions\*.ps1
Unblock-File C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules\Pester\Functions\Assertions\*.ps1
Import-Module Pester
# Prompt
function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}
# PSUnit
.  C:\Users\Administrator\Documents\windowspowershell\profile.ps1
. PSUnit.ISE.ps1
