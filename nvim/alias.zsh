if [[ $(uname) == "Darwin" ]]
then
    alias vim='/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/MacOS/Vim'
    alias nvim-update='nvim +PluginInstall +qall'
fi
