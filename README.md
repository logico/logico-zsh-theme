# Logico Zsh theme.
A minimal Oh-my-zsh theme.

## Features

- Fast.
- Integration with git.
- Better indicator for `vi-mode`.
- Indicator for remote sessions.

## Install.

1.- Download the theme.

```
curl https://raw.githubusercontent.com/logico-dev/logico-zsh-theme/master/logico.zsh-theme -Lo ~/.oh-my-zsh/themes/logico.zsh-theme
```

2.- Enable it on `.zshrc`.

```
ZSH_THEME="logico"
```

3.- Restart the terminal.


![Screenshot](https://logico.com.ar/img/2019/03/17/logico-zsh-theme.gif)

---

# Cusor change on vi-mode.

Add this to your .zshrc

```
function zle-line-init zle-keymap-select {
  RPS1="%{$fg_bold[white]%}%{$bg[black]%}${${KEYMAP/vicmd/ NORMAL }/(main|viins)/}%{$reset_color%}"
  RPS2=$RPS1
  if [ $KEYMAP = vicmd  ]; then
    echo -ne "\033]12;deepskyblue\x7\e[1 q"
  else
    # the insert mode for vi
    echo -ne "\033]12;199\x7\e[5 q"
  fi
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
```


This theme is part of the [Typewriter suite](https://github.com/logico-dev/typewriter).
