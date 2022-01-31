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

_currentEnvironmentName() {
  if [ -z "${CURRENT_ENVIRONMENT_NAME}" ]; then
    echo ""
  else
    echo "%{\e[38;5;250m%}[${CURRENT_ENVIRONMENT_NAME}]%{\e[39m%} "
  fi
}

# git branch in prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{cyan}%b%f'

setopt PROMPT_SUBST
export PROMPT='%B%c%b%f$(_currentEnvironmentName)${vcs_info_msg_0_} %(?.%F{24}❯%f.%F{198}❯%f) '

source ${HOME}/.zsh/zaliases
source ${HOME}/.zsh/zcompletion

[[ -r ${HOME}/.zshrc.local ]] && source ${HOME}/.zshrc.local
[[ -r ${HOME}/.asdf/asdf.sh ]] && source ${HOME}/.asdf/asdf.sh
[[ -r ${HOME}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ${HOME}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export BUNDLER_EDITOR=code
export EDITOR=code

current_tt
