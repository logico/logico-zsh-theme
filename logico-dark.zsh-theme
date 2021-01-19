local resetColor="%{$reset_color%}"
local prefix=""
local dir="%{$fg_bold[white]%}%c$resetColor$resetColor"

PROMPT='%{$fg_bold[white]%}$prefix $(ssh_connection)$dir $(git_prompt_info)'
MODE_INDICATOR="$resetColor%{$fg[black]%}%{$bg[blue]%} NORMAL $resetColor"

function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[black]%}ﯟ "
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="at %{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$resetColor "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ×"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%} ✔"
