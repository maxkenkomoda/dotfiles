#--------------------
# custom settings
#--------------------
#spell check
setopt correct

#spell check all
setopt correct_all

#set color
autoload -Uz colors
colors
PROMPT='%F{green}%m@%n%f %F{red}%~%f$ '

autoload -U compinit
compinit -u


#--------------------
# Alias
#--------------------
alias t='tmux'
alias v ='vim'
alias shut='sudo shutdown -h now'


#--------------------
# rbenv
#--------------------
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"


#--------------------
# nvm
#--------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.nvm/nvm.sh


#--------------------
# settings for fzf
#--------------------
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#--------------------
# terraform
#--------------------
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform


#--------------------
# GCP
#--------------------
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/maxken/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/maxken/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/maxken/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/maxken/google-cloud-sdk/completion.zsh.inc'; fi
