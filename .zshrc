# Created by newuser for 5.9
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

autoload -Uz compinit promptinit
compinit
promptinit

prompt pure

autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search

autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[B' down-line-or-beginning-search

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
