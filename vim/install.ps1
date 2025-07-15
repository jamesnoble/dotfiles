function Start-ElevatedPS {
    param([ScriptBlock]$code)

    Start-Process -FilePath powershell.exe -Verb RunAs -ArgumentList $code
}

git clone https://github.com/VundleVim/Vundle.vim.git $home\vimfiles\bundle\Vundle.vim
Start-ElevatedPS { New-Item -Force -Path $home\_vimrc -ItemType SymbolicLink -Value $Env:userprofile\dotfiles\vim\vimrc.symlink }
Start-ElevatedPS { New-Item -Force -Path $home\_gvimrc -ItemType SymbolicLink -Value $Env:userprofile\dotfiles\vim\gvimrc.symlink }
