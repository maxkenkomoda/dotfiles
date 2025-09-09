#--------------------
# git-prompt setting
#--------------------
# load git-prompt
source ~/git-prompt.sh

# load git-completion
fpath=(~/ $fpath)
zstyle ':completion:*:*:git:*' script ~/git-completion.bash
autoload -Uz compinit && compinit

# Options for git-prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

#--------------------
# custom settings
#--------------------
# spell check
setopt correct

# spell check all
setopt correct_all

# set color
autoload -Uz colors
colors
setopt PROMPT_SUBST ; PS1='%F{green}%m@%n%f: %F{red}%~%f %F{cyan}$(__git_ps1 "[branch: %s]")%f\$ '

autoload -U compinit
compinit -u

# history file
HISTFILE='../../.zsh_history'
HISTFILESIZE=3000

#--------------------
# Alias
#--------------------
alias t='tmux'
alias v ='vim'
alias rdf='source ~/.zshrc'
alias df='cd ~/dotfiles'
alias dev='cd ~/max-dev'
alias hisall='history'
alias hiss='history | grep'
alias ghr='gh pr checkout'
alias gl='git log --oneline'
alias crs='cursor .'
alias gifcmd="ffmpeg"
alias ssmakegif='timestamp=$(date +"%Y-%m-%d_%H-%M-%S"); ffmpeg -i ~/Desktop/ss.mov -r 10 ~/Desktop/ss_${timestamp}.gif && mv ~/Desktop/ss.mov ~/Desktop/ss_${timestamp}.mov'
alias makegif='latest_mov=$(ls -t ~/Desktop/*.mov 2>/dev/null | head -1); if [ -z "$latest_mov" ]; then echo "movファイルが見つかりません"; else timestamp=$(date +"%Y-%m-%d_%H-%M-%S"); ffmpeg -i "$latest_mov" -r 10 ~/Desktop/gif_${timestamp}.gif && echo "変換完了: gif_${timestamp}.gif"; fi'

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
# go
#--------------------
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#--------------------
# load local zshrc
#--------------------
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/k002408/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
