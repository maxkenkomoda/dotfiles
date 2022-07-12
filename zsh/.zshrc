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
PROMPT='%F{green}%m@%n%f %F{red}%~%f%# '

autoload -U compinit
compinit -u


#--------------------
# Alias
#--------------------
alias t='tmux'
alias v ='vim'
alias rdf='source ~/.zshrc'
alias df='cd ~/dotfiles'
alias dev='cd ~/max-dev'

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
# load local zshrc
#--------------------
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
