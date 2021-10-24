function prompt()
{
    $host.ui.RawUI.WindowTitle = $pwd

    Write-Host ""
    Write-Host "$pwd" -ForegroundColor DarkBlue
    Write-Host ">" -ForegroundColor DarkMagenta -NoNewline
    return " "
}

$dotfiles = "$home\dotfiles"

foreach($item in Get-ChildItem $dotfiles -Recurse -Filter "aliases.ps1")
{
    . $item
}