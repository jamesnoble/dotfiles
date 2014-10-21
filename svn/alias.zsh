alias ss='svn status --ignore-externals -u'
alias su='svn update'
alias sc='svn commit'

sl() {
    svn log "$*" | less
}
