# @ git format
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

export GIT_STASH_FORMAT="--pretty=format:'%C(brightyellow)%gd %Cblue%notes %Cgreen%cr%n  %C(cyan)%gs%n'"

# @ git alias
export GIT_CONFIG_COUNT=20

# branch
export GIT_CONFIG_KEY_0="alias.b"
export GIT_CONFIG_VALUE_0="branch $GIT_BRANCH_FORMAT"
export GIT_CONFIG_KEY_1="alias.ba"
export GIT_CONFIG_VALUE_1="branch $GIT_BRANCH_FORMAT -avv"
export GIT_CONFIG_KEY_2="alias.br"
export GIT_CONFIG_VALUE_2="branch $GIT_BRANCH_FORMAT -rvv"
export GIT_CONFIG_KEY_3="alias.bp"
export GIT_CONFIG_VALUE_3="branch $GIT_BRANCH_FORMAT --points-at"
export GIT_CONFIG_KEY_4="alias.bcn"
export GIT_CONFIG_VALUE_4="branch $GIT_BRANCH_FORMAT --contains"
export GIT_CONFIG_KEY_5="alias.bncn"
export GIT_CONFIG_VALUE_5="branch $GIT_BRANCH_FORMAT --no-contains"
export GIT_CONFIG_KEY_6="alias.bmr"
export GIT_CONFIG_VALUE_6="branch $GIT_BRANCH_FORMAT --merged"
export GIT_CONFIG_KEY_7="alias.bnmr"
export GIT_CONFIG_VALUE_7="branch $GIT_BRANCH_FORMAT --no-merged"

# log
export GIT_CONFIG_KEY_8="alias.l" 
export GIT_CONFIG_VALUE_8="log $GIT_LOG_FORMAT"
export GIT_CONFIG_KEY_9="alias.al" 
export GIT_CONFIG_VALUE_9="log $GIT_LOG_FORMAT --all"

# show
export GIT_CONFIG_KEY_10="alias.so"
export GIT_CONFIG_VALUE_10="show $GIT_SHOW_FORMAT"

# tag
export GIT_CONFIG_KEY_11="alias.t"
export GIT_CONFIG_VALUE_11="tag $GIT_TAG_FORMAT"
export GIT_CONFIG_KEY_12="alias.ta"
export GIT_CONFIG_VALUE_12="tag $GIT_TAG_FORMAT -a"
export GIT_CONFIG_KEY_13="alias.tam"
export GIT_CONFIG_VALUE_13="tag $GIT_TAG_FORMAT -am"
export GIT_CONFIG_KEY_14="alias.tp"
export GIT_CONFIG_VALUE_14="tag $GIT_TAG_FORMAT --points-at"
export GIT_CONFIG_KEY_15="alias.tcn"
export GIT_CONFIG_VALUE_15="tag $GIT_TAG_FORMAT --contains"
export GIT_CONFIG_KEY_16="alias.tncn"
export GIT_CONFIG_VALUE_16="tag $GIT_TAG_FORMAT --no-contains"
export GIT_CONFIG_KEY_17="alias.tmr"
export GIT_CONFIG_VALUE_17="tag $GIT_TAG_FORMAT --merged"
export GIT_CONFIG_KEY_18="alias.tnmr"
export GIT_CONFIG_VALUE_18="tag $GIT_TAG_FORMAT --no-merged"

# stash
export GIT_CONFIG_KEY_19="alias.hl"
export GIT_CONFIG_VALUE_19="stash list -p $GIT_STASH_FORMAT"
