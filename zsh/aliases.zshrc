alias rl='. ~/.zshrc'
if [ -e /proc/version ] && grep -q Microsoft /proc/version; then
    alias open='explorer.exe'
fi
