function prompt()
{
    $host.ui.RawUI.WindowTitle = $pwd

    Write-Host ""
    Write-Host "$pwd" -ForegroundColor DarkBlue
    Write-Host ">" -ForegroundColor DarkMagenta -NoNewline
    return " "
}

$dotfiles = "$home\dotfiles"

# Sourcing sub-dir files

foreach($item in Get-ChildItem $dotfiles -Recurse -Filter "aliases.ps1")
{
    . $item
}

# PSReadLine

$PSReadLineOptions = @{
    EditMode = "Vi"
}
Set-PSReadlineOption @PSReadLineOptions

function OnViModeChange
{
    if ($args[0] -eq 'Command')
    {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    }
    else
    {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange