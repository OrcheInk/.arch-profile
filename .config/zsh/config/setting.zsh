setopt autocd 
setopt extendedglob 
setopt nomatch
setopt notify
setopt nullglob
setopt list_packed
setopt promptsubst

bindkey -e

autoload -U colors && colors
autoload -U compinit && compinit

eval "$(dircolors $ZDOTDIR/dir_colors)"

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
