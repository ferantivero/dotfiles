# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-prompt.sh
source ~/.git-completion.bash
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
source ~/.git-prompt.sh

GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f ~/.git-prompt.sh ]; then
  export PS1='😄  \[\033[01;32m\]\u 😏 👉  \h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\💰  '; 
else export PS1='😄  \[\033[01;32m\]\u 😏 👉  \h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$\💰  '; 
fi

