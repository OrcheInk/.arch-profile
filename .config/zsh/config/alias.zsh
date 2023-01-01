### [a]


### [b]


### [c]

## common
alias p="cd ../"
alias h="cd -"
alias to="touch"
alias md="mkdir -p"
alias ls="ls --color"
alias al="ls -a"
alias ll="ls -l"
alias la="ls -la"
alias lsa="ls -a -- .*"

### [d]                                                                                                                                                                                              
                                                                                                                                                                                                     
                                                                                                                                                                                                     
### [e]                                                                                                                                                                                              
                                                                                                                                                                                                     
                                                                                                                                                                                                     
### [f]                                                                                                                                                                                              
                                                                                                                                                                                                     
                                                                                                                                                                                                     
### [g]                                                                                                                                                                                              
                                                                                                                                                                                                     
## git                                                                                                                                                                                               
alias g="git"

# <add>
alias ga="git add"
alias gaa="ga -A"
alias gaA="ga --no-all"
alias gae="ga -e"
alias gai="ga -i"
alias gan="ga -N"
alias gap="ga -p"
alias gau="ga -u"
alias gax="ga --chmod=+x"
alias gaX="ga --chmod=-x"

# <apply>
alias gay="git apply"


# <branch>
alias gb="git branch $GIT_BRANCH_FORMAT"
alias gba="gb -avv"
alias gbr="gb -rvv"
alias gbc="gb -c"
alias gbC="gb -C"
alias gbd="gb -d"
alias gbD="gb -D"
alias gbu="gb -u"
alias gbm="gb -m"
alias gbM="gb -M"
alias gbe="gb --edit-description"
alias gbU="gb --unset-upstream"
alias gbp="gb --points-at"
alias gbco="gb --contains"
alias gbCO="gb --no-contains"
alias gbme="gb --merged"
alias gbME="gb --no-merged"

# <clone>
alias gcl="git clone"
alias gclb="gcl --bare"
alias gclo="gcl -o"
alias gcld="gcl --depth"

# <commit>
alias gc="git commit"
alias gca="gc -am"
alias gcam="git commit --amend"
alias gci="git commit --interactive"

# <checkout>
alias gco="git checkout"
alias gcob="gco -b"
alias gcot="gco -t"
alias gcop="gco -p"

# <cherry-pick>
alias gcp="git cherry-pick"
alias gcpn="gcp -n"
alias gcpc="gcp --continue"
alias gcpk="gcp --skip"
alias gcpa="gcp --abort"
alias gcpq="gcp --quit"

# <config>
alias gcon="git config"
alias gcona="gcon --get-all"
alias gconx="gcon --get-regexp"
alias gconu="gcon --unset"
alias gconua="gcon --unset-all"
alias gconra="gcon --replace-all"
alias gconrn="gcon --rename-section"
alias gconrm="gcon --remove-section"
alias gconse="gcon --edit --system"
alias gconge="gcon --edit --global" 
alias gconle="gcon --edit --local"
alias gcond="gcon --list"
alias gcons="gcond --system"
alias gcong="gcond --global"
alias gconl="gcond --local"
alias gconso="gcond --show-origin"
alias gconss="gcond --show-scope"

# <describe>
alias gd="git describe"
alias gdt="gd --tags"

# <diff>
alias gdf="git diff"

# <difftool>
alias gdit="git difftool"
alias gdith="gdit --tool-help"
alias gditt="gdit -t"


# <e>
# <fetch>
alias gf="git fetch"

# <g>
# <h>
# <init>
alias gi="git init"
alias gib="gi -b"
alias gie="gi --bare"
alias gis="gi --shared"

# <j>
# <k>
# <log>
alias gl="git log $GIT_LOG_FORMAT"
alias gal="gl --all"
alias go="gl --oneline --graph"
alias gao="go --all"

# <merge>
alias gm="git merge"
alias gmc="gm --continue"
alias gma="gm --abort"
alias gmq="gm --quit"
alias gmm="gm -m"

# <mergetool>
alias gmet="git mergetool"
alias gmett="gmet -t"
alias gmeth="gmet --tool-help"

# <mv>
alias gmv="git mv"
alias gMV="gmv -f"

# <notes>
alias gn="git notes"
alias gna="gn add"
alias gnc="gn copy"
alias gncf="gn copy -f"
alias gnap="gn append"
alias gne="gn edit"
alias gns="gn show"
alias gnr="gn remove"
alias gnm="gn merge"
alias gnp="gn prune"
alias gng="gn get-ref"

# <o>

# <prune>
alias gpr="git prune"

# <pull>
alias gp="git pull"

# <push>
alias gu="git push"
alias gua="gu --all"
alias gud="gu -d"
alias gut="gu --tags"
alias guu="gu -u"

# <q>

# <rebase>
alias grb="git rebase"
alias grbi="grb -i"
alias grbco="grb --continue"
alias grbab="grb --abort"
alias grbqu="grb --quit"
alias grbsk="grb --skip"
alias grbe="grb --edit-todo"
alias grbon="grb --onto"
alias grbsp="grb --show-current-patch"

# <remote>
alias gmt="git remote"
alias gmtv="gmt -v"
alias gmta="gmt add"
alias gmtr="gmt rename"
alias gmtrm="gmt remove"
alias gmts="gmt show"
alias gmtp="gmt prune"
alias gmtgt="gmt get-url"
alias gmtst="gmt set-url"

# <restore>
alias gst="git restore"
alias gsts="gst -s"
alias gstp="gst -p"
alias gstS="gst -S"

# <range-diff>
alias grd="git range-diff"

# <reset>
alias gre="git reset"
alias grep="gre -p"
alias gres="gre --soft"
alias greh="gre --hard"
alias grek="gre --keep"
alias grem="gre --merge"

# <rm>
alias grm="git rm"
alias grM="grm -f"
alias grmc="grm --cached"
alias grmr="grm -r"
alias grmR="grm -rf"

# <revert>
alias grv="git revert"
alias grvc="grv --continue"
alias grvk="grv --skip"
alias grvq="grv --quit"
alias grva="grv --abort"
alias grvn="grv -n3acf393"

# <show>
alias gso="git show $GIT_SHOW_FORMAT"

# <shortlog>
alias gsl="git short log"
alias gslm="gsl --merges"
alias gslM="gsl --no-merges"

# <status>
alias gs="git status --show-stash"
alias gss="gs -s"

# <stash>
alias gh="git stash"
alias ghu="gh -a"
alias ghp="gh -p"
alias ghl="gh list --pretty=format:'%C(brightyellow)%gd %Cblue%gn %Cgreen%cr%n  %C(cyan)%gs%n' -p"
alias ghw="gh show -p"
alias gho="gh pop"
alias ghy="gh apply"
alias ghb="gh branch"
alias ghr="gh clear"
alias ghd="gh drop"

# <switch>
alias gw="git switch"
alias gwc="gw -c"
alias gwd="gw --detach"
alias gwdi="gw --discard-changes"
alias gwt="gwc -t"

# <tag>
alias gt="git tag $GIT_TAG_FORMAT"
alias gta="gt -a"
alias gtam="gta -m"
alias gtd="gt -d"
alias gtc="gt --contains"
alias gtC="gt --no-contains"
alias gtm="gt --merged"
alias gtM="gt --no-merged"
alias gtp="gt --points-at"
alias gtr="rename_tag"
alias gtms="change_tag_message"

# <u>
# <v>
# <w>
# <x>
# <y>
# <z>

## nvim
alias vim="nvim"

### [o]


### [p]


### [q]


### [r]

## ranger
alias rr='ranger'
alias rrc='vim ~/.config/ranger/commands.py'

### [s]

## scripts
alias fq='$ZSH/scripts/fquery'

### [t]

## trash-cli
alias ts='trash'
alias tsl='trash-list'
alias tse='trash-empty'
alias tsr='trash-restore'
alias tsm='trash-rm'

### [u]


### [v]


### [w]


### [x]


### [y]


### [z]

## zsh
alias zrc='vim ~/.zshrc'
alias zso='source ~/.zshrc'
alias zco='vim $ZSH/config'

## z.lua
alias zl="z -l"
alias zc="z -c"
alias ze="z -e"
alias zi="z -i"
alias zb="z -b"
alias zh="z -i -t"
alias zf="z -I"
