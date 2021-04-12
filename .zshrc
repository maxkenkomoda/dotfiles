# Created by newuser for 5.8
# zsh-completions(補完機能)の設定
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit

compinit -u

#spell check
setopt correct

#spell check all
setopt correct_all

#set color
autoload -Uz colors
colors

PROMPT="%{$fg[green]}%}[%n@%m]%{${reset_color}%}"

alias t='tmux'
alias v ='vim'
alias shut='sudo shutdown -h now'

[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=/usr/local/opt/mysql@5.7/bin/:$PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#settings for fzf

export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/maxken/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/maxken/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/maxken/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/maxken/google-cloud-sdk/completion.zsh.inc'; fi

