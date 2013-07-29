PATH=/usr/local/sbin:/usr/local/bin:$PATH;
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
if [ -f ~/.drush_bashrc ] ; then
  . ~/.drush_bashrc
fi
alias ls='ls -G'
# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
      
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
             
# Nice prompt
PS1='\[\033[0;32m\][\t]\[\033[0m\] \u@\h:\[\033[0;33m\]\w\[\033[0;31m\]$(__git_ps1)\[\033[00m\] \$ '
