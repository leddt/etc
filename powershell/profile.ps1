Import-Module posh-git

$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::White

function Open-VisualStudio {
  Start-Process @(Get-ChildItem *.sln)[0].Name
}
Set-Alias -Name vs -Value Open-VisualStudio
