# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
    if test "$(uname)" = "Darwin"
    then
        export EDITOR=mvim
    else
        export EDITOR=vim
    fi
fi
