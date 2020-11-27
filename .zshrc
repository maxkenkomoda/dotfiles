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
eval "$(rbenv init -)"
eval "$(rbenv init -)"
eval "$(rbenv init -)"
eval "$(anyenv init -)"

export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=/usr/local/opt/mysql@5.7/bin/:$PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
