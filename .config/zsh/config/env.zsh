export BAT_THEME="gruvbox-dark"                                                                
export EDITOR='nvim'                                                                           
export FD_IGNORE="{.git,.idea,.tldr,.cache,.local,.npm,node_moudles,.config/zsh,.config/z}"    
export RG_IGNORE="!{.git,.idea,.tldr,.cache,.local,.npm,node_moudles,.config/zsh,.config/z}/*" 
export FZF_DEFAULT_OPTS="--layout=reverse --preview-window=down --height=90%"                
export FZF_DEFAULT_COMMAND="fd -H -c=never -E=$FD_IGNORE"                                      
export FZF_COLOR="--color 'fg:#0078d4,bg:#212121,pointer:#fff100'"                             
export RANGER_ZLUA="$ZSH/plugins/z/z.lua"                                                      
export ZDOTDIR="~/.config/zsh"                                                                 
export _ZL_DATA="~/.config/z/.zlua"
export PAGER="most"
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


# nodejs
export NODE_HOME=/usr/local/node
export NPM_GLOBAL=/usr/local/nodejs/npm_global


# PATH
export PATH=$PATH:$NODE_HOME/bin
export PATH=$PATH:$NPM_GLOBAL/bin
