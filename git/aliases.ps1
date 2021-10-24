function ga() { git add --all }
function glog() { git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative }
function gd() { git diff }
del alias:gc -Force
function gc() { git commit }
function gs() { git status -sb }
