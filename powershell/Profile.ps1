function prompt()
{
    $host.ui.RawUI.WindowTitle = $pwd

    $svn_branch = get_svn_branch

    Write-Host ""
    Write-Host "$pwd" -ForegroundColor DarkBlue -NoNewline
    Write-Host " $svn_branch" -ForegroundColor DarkGray
    Write-Host "❯" -ForegroundColor DarkMagenta -NoNewline
    return " "
}

function exists($command)
{
    return Get-Command $command -errorAction SilentlyContinue
}

function get_svn_branch()
{
    if(!(exists svn)){ return "" }

    $output = svn info --show-item relative-url
    if($null -eq $output) { return "" }
    
    $output_split = $output.split("/")
    if($output_split.count -lt 2) { return "" }

    $location = $output_split[1] # [0] should always be ^

    if($location -eq "trunk")
    {
        return $location
    }
    elseif($location -eq "branches")
    {
        return $output_split[2]
    }
    elseif($location -eq "tags")
    {
        return $location + "/" + $output_split[2]
    }
    
    return ""
}

function get_svn_status() # leaving for posterity but svn st is too slow for actual prompt use
{
    if(!(exists svn)){ return "" }
    
    $output = svn st -q
    if($null -eq $output) { return "" }

    return "*"
}


$dotfiles = "$home\dotfiles"

foreach($item in Get-ChildItem $dotfiles -Recurse -Filter "aliases.ps1")
{
    . $item
}