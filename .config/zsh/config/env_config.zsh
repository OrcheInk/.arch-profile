# history
export HISTORY="$HOME/.cache/history"

# edit & view 
export BAT_THEME="gruvbox-dark"
export PAGER="most"
export EDITOR='nvim'                             

# search ignore
export COMMON_IGNORE="{.arch-profile,.cache,.local,.config,.git}"
export FD_IGNORE="$COMMON_IGNORE" 
export RG_IGNORE="!$COMMON_IGNORE/*"

# fzf
export FZF_DEFAULT_OPTS="--layout=reverse --preview-window=down --height=90%"
export FZF_DEFAULT_COMMAND="fd -H -c=never -E=$FD_IGNORE"
export FZF_COLOR="--color 'fg:#0078d4,bg:#212121,pointer:#fff100'"

# ranger
export RANGER_ZLUA="$HOME/.config/z.lua/z.lua"

# z.lua history
export _ZL_DATA="$HISTORY/z.lua"

# GPG
export GPG_TTY=$(tty)
