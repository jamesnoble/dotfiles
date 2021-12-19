setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "%b%u%c"
precmd()
{
    vcs_info
}


NEWLINE=$'\n'
PROMPT_L1=%F{blue}'%~'
PROMPT_L2="%F{magenta}❯ %F"
PROMPT_VCS_INFO='%F{cyan}${vcs_info_msg_0_}%F'

PROMPT="$NEWLINE$PROMPT_L1 $PROMPT_VCS_INFO$NEWLINE$PROMPT_L2"
