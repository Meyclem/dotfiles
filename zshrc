export GPG_TTY=$(tty)

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt no_list_ambiguous

bindkey -e
autoload -U edit-command-line;
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zle -N edit-command-line;
bindkey '^F' edit-command-line # Edit current line with C-f
bindkey '^[[1;9D' backward-word # Alt-Left
bindkey '^[[1;9C' forward-word # Alt-Right
bindkey '^[[3~' delete-char # Delete
bindkey '^[[Z' reverse-menu-complete # Ctrl-r
bindkey '^[[A' up-line-or-search # Arrow up
bindkey '^[[B' down-line-or-search # Arrow down

PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="/usr/local/sbin:$PATH"
PATH="${HOME}/.local/bin:${PATH}"
PATH="${HOME}/.asdf/shims:${PATH}"
PATH="./node_modules/.bin:${PATH}"
PATH="${HOME}/Library/Android//sdk/platform-tools:${PATH}"
PATH="${HOME}/.bin:${PATH}"

# git branch in prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{cyan}%b%f'

setopt PROMPT_SUBST
export PROMPT='%B%c%b%f${vcs_info_msg_0_} %(?.💚.💔) '

source ${HOME}/.zsh/zaliases
source ${HOME}/.zsh/zcompletion

[[ -r ${HOME}/.zshrc.local ]] && source ${HOME}/.zshrc.local
[[ -r ${HOME}/.asdf/asdf.sh ]] && source ${HOME}/.asdf/asdf.sh
[[ -r ${HOME}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ${HOME}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Google Cloud SDK cli.
if [ -f '/Users/clementmeyer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/clementmeyer/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/clementmeyer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/clementmeyer/google-cloud-sdk/completion.zsh.inc'; fi

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export BUNDLER_EDITOR=code
export EDITOR=code
