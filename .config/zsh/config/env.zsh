export BAT_THEME="gruvbox-dark"                                                                
export COMMON_IGNORE="{.arch-profile,.cache,.local,.config,.git}"
export FD_IGNORE="$COMMON_IGNORE"    
export RG_IGNORE="!$COMMON_IGNORE/*" 
export FZF_DEFAULT_OPTS="--layout=reverse --preview-window=down --height=90%"                
export FZF_DEFAULT_COMMAND="fd -H -c=never -E=$FD_IGNORE"                                      
export FZF_COLOR="--color 'fg:#0078d4,bg:#212121,pointer:#fff100'"                             
export RANGER_ZLUA="$HOME/.config/z.lua/z.lua"
export _ZL_DATA="$HOME/.config/z.lua/history"
export PAGER="most"
export EDITOR='nvim'                                                                           
export GPG_TTY=$(tty)

# git format
export GIT_LOG_FORMAT="--pretty=format:'%C(auto)%h %C(auto)%G? %C(cyan)%cd %C(green)%s %C(blue)%an%C(auto)%d' --date=format:'%y/%m/%d %H:%M'"

export GIT_SHOW_FORMAT="--pretty=format:'%C(brightyellow)[ %h ] %Creset( %C(auto)%D )%n%n  -< %C(cyan)%s >-%n%n%w(78,4,4)%b%n%w(78,4,4)%Cred%N%n%w(78,0,0)%C(blue)%an <%ae>%n%C(green)%cd%n' --date=format:'%y/%m/%d %H:%M'"

export GIT_BRANCH_FORMAT="--format='%(align:30)%(if)%(HEAD)\
%(then)%(color:brightyellow)> %(refname:short)\
%(else)%(if:equals=refs/remotes)%(refname:rstrip=2)\
%(then)  %(color:red)%(refname:lstrip=1)\
%(else)  %(color:green)%(refname:short)%(end)%(end)%(end)\
%(color:brightgreen)%(objectname:short) \
%(if)%(upstream)\
%(then)%(color:blue)%(upstream:short) %(color:yellow)%(upstream:track) %(end)\
%(color:cyan)%(subject)'"

export GIT_TAG_FORMAT="--format='%(color:green)Tag: %(color:reset)%(refname:short)
%(color:green)Commit: %(color:brightyellow)%(*objectname:short)
%(color:green)Author: %(color:blue)%(taggername) %(taggeremail)
%(color:green)Date: %(color:red)%(taggerdate:format:%y/%m/%d %H:%M)
%(color:green)Message: %(color:cyan)%(contents)'"

export GIT_CONFIG_COUNT=3

export GIT_CONFIG_KEY_0="alias.b" 
export GIT_CONFIG_VALUE_0="branch $GIT_BRANCH_FORMAT"

export GIT_CONFIG_KEY_1="alias.lf" 
export GIT_CONFIG_VALUE_1="log $GIT_LOG_FORMAT"

export GIT_CONFIG_KEY_2="alias.t" 
export GIT_CONFIG_VALUE_2="tag $GIT_TAG_FORMAT"

# nodejs
export NODE_HOME=/usr/local/node
export NPM_GLOBAL=/usr/local/nodejs/npm_global


# PATH
export PATH=$PATH:$NODE_HOME/bin
export PATH=$PATH:$NPM_GLOBAL/bin
