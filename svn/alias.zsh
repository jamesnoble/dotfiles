alias ss='svn status --ignore-externals -u'
alias sm='svn status --ignore-externals -u | ag --nocolor "M "'
alias su='svn update'
alias sc='svn commit'
alias sd='svn diff --diff-cmd colordiff'

function sl()
{
  svn log --limit 10 $@ | svn-short-log
}
