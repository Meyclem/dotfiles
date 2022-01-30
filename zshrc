ZSH=$HOME/.oh-my-zsh
source "${ZSH}/oh-my-zsh.sh"

export GPG_TTY=$(tty)

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

bindkey -e
autoload -U edit-command-line;
zle -N edit-command-line;
bindkey '^F' edit-command-line # Edit current line with C-f
bindkey '^[[1;9D' backward-word # Alt-Left
bindkey '^[[1;9C' forward-word # Alt-Right
bindkey '^[[3~' delete-char # Delete
bindkey '^[[Z' reverse-menu-complete # Ctrl-r
bindkey '^[[A' up-line-or-search # Arrow up
bindkey '^[[B' down-line-or-search # Arrow down

ZSH_THEME="robbyrussell"

source ${HOME}/.zsh/zaliases
source ${HOME}/.zsh/zcompletion

[[ -r ${HOME}/.zshrc.local ]] && source ${HOME}/.zshrc.local
[[ -r ${HOME}/.asdf/asdf.sh ]] && source ${HOME}/.asdf/asdf.sh
[[ -r ${HOME}/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ${HOME}/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

current_tt
