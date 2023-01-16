# @ git format
export GIT_LOG_FORMAT="--pretty=format:'%C(brightyellow)%h %C(auto)%G? %C(green)%cd %C(cyan)%s %C(blue)%an %C(auto)%D'"

export GIT_REF_LOG_FORMAT="--pretty=format:'%C(red)%h %C(auto)%G? %C(green)%ci %C(blue)%an %C(auto)%D%n    %C(brightyellow)%gd %C(cyan)%gs%n    %C(black)%s%n'"

export GIT_LOG_GRAPH_FORMAT="--pretty=format:'%C(brightyellow)%h %C(cyan)%s %C(auto)%D'"

export GIT_LOG_ALL_FORMAT="--pretty=format:'%C(brightyellow)%h %C(auto)%G? %C(green)%cd %C(blue)%an %C(auto)%D%n%n%w(78,4,4)%C(cyan)%B%C(red)%N%n'"

export GIT_SHOW_FORMAT="--pretty=format:'%C(brightyellow)[ %h ] %C(green)%cd %C(blue)%an %C(auto)%D%n%n%w(78,4,4)%C(cyan)%B%Cred%N'"

export GIT_BRANCH_FORMAT="--format='%(align:30)\
%(if)%(HEAD)%(then)%(color:brightyellow)> %(refname:short)\
%(else)%(if)%(worktreepath)%(then)%(color:black)+ %(refname:short)\
%(else)%(if:equals=refs/remotes)%(refname:rstrip=2)%(then)  %(color:red)%(refname:lstrip=1)\
%(else)  %(color:cyan)%(refname:short)%(end)%(end)%(end)%(end)\
%(color:214)%(objectname:short)\
%(if)%(worktreepath)%(then)%(if)%(HEAD)%(then)%(else) %(color:83)(%(worktreepath))%(end)%(end)\
%(if)%(upstream)%(then) %(color:blue)%(upstream:short) %(color:193)%(upstream:track)%(end)\
%(if:equals=HEAD)%(refname:strip=3)%(then) %(color:reset)-> %(symref:strip=2)\
%(else) %(color:green)%(subject)%(end)'"

export GIT_TAG_FORMAT="--format='%(color:green)Tag: %(color:124)%(if)%(contents:signature)%(then)G%(else)N%(end)   %(color:reset)%(refname:short)
%(if)%(tag)%(then)%(color:green)Commit:  %(color:brightyellow)%(*objectname:short)
%(color:green)Author:  %(color:blue)%(taggername) %(taggeremail)
%(color:green)Date:    %(color:yellow)%(taggerdate:format:%y/%m/%d %H:%M)
%(color:green)Message: %(color:cyan)%(contents:subject)\
%(else)%(color:green)Message: %(color:cyan)%(contents:subject)%(end)
'"

export GIT_STASH_FORMAT="--pretty=format:'%C(brightyellow)%gd %C(green)%cr %C(blue)%an%n  %C(cyan)%gs%n'"

export GIT_LS_FORMAT="--format='$fg[red]%(objectmode) $fg[blue]%(objectname) $fg[green]%(path)'"

export GIT_REV_FORMAT="--pretty=format:'%C(brightyellow)%h %C(auto)%G? %C(cyan)%ci %C(green)%s %C(blue)%an %C(auto)%D%n'"

# @ git normal alias 
alias gcgl="git config -l --show-scope --show-origin | grep -v -e alias -e % -e \' -e color | sort -k1,1 -k3,3 | column --table | most"
alias glan="git log --all --pretty=format:'%an <%ae>' | sort | uniq -c | column --table | most" 

# @ git env alias
export GIT_CONFIG_COUNT=45

# branch
export GIT_CONFIG_KEY_0="alias.b"
export GIT_CONFIG_VALUE_0="branch $GIT_BRANCH_FORMAT"

export GIT_CONFIG_KEY_1="alias.ba"
export GIT_CONFIG_VALUE_1="branch $GIT_BRANCH_FORMAT -avv"

export GIT_CONFIG_KEY_2="alias.bal"
export GIT_CONFIG_VALUE_2="branch $GIT_BRANCH_FORMAT -avv -l"

export GIT_CONFIG_KEY_3="alias.br"
export GIT_CONFIG_VALUE_3="branch $GIT_BRANCH_FORMAT -rvv"

export GIT_CONFIG_KEY_4="alias.bpa"
export GIT_CONFIG_VALUE_4="branch $GIT_BRANCH_FORMAT --points-at"

export GIT_CONFIG_KEY_5="alias.bcn"
export GIT_CONFIG_VALUE_5="branch $GIT_BRANCH_FORMAT --contains"

export GIT_CONFIG_KEY_6="alias.bncn"
export GIT_CONFIG_VALUE_6="branch $GIT_BRANCH_FORMAT --no-contains"

export GIT_CONFIG_KEY_7="alias.bmr"
export GIT_CONFIG_VALUE_7="branch $GIT_BRANCH_FORMAT --merged"

export GIT_CONFIG_KEY_8="alias.bnmr"
export GIT_CONFIG_VALUE_8="branch $GIT_BRANCH_FORMAT --no-merged"

# log
export GIT_CONFIG_KEY_9="alias.l" 
export GIT_CONFIG_VALUE_9="log $GIT_LOG_FORMAT"

export GIT_CONFIG_KEY_10="alias.al" 
export GIT_CONFIG_VALUE_10="log $GIT_LOG_FORMAT --all"

export GIT_CONFIG_KEY_11="alias.o" 
export GIT_CONFIG_VALUE_11="log $GIT_LOG_GRAPH_FORMAT --graph"

export GIT_CONFIG_KEY_12="alias.ao" 
export GIT_CONFIG_VALUE_12="log $GIT_LOG_GRAPH_FORMAT --all --graph"

export GIT_CONFIG_KEY_13="alias.ll" 
export GIT_CONFIG_VALUE_13="log $GIT_LOG_FORMAT -L"

export GIT_CONFIG_KEY_14="alias.ls"
export GIT_CONFIG_VALUE_14="log $GIT_LOG_FORMAT -S"

export GIT_CONFIG_KEY_15="alias.las" 
export GIT_CONFIG_VALUE_15="log $GIT_LOG_FORMAT --all -S"

export GIT_CONFIG_KEY_16="alias.lx" 
export GIT_CONFIG_VALUE_16="log $GIT_LOG_FORMAT -G"

export GIT_CONFIG_KEY_17="alias.lax" 
export GIT_CONFIG_VALUE_17="log $GIT_LOG_FORMAT --all -G"

export GIT_CONFIG_KEY_18="alias.lg" 
export GIT_CONFIG_VALUE_18="log $GIT_LOG_FORMAT --grep"

export GIT_CONFIG_KEY_19="alias.lag" 
export GIT_CONFIG_VALUE_19="log $GIT_LOG_FORMAT --all --grep"

export GIT_CONFIG_KEY_20="alias.lp" 
export GIT_CONFIG_VALUE_20="log $GIT_LOG_ALL_FORMAT --graph -p"

export GIT_CONFIG_KEY_21="alias.lap" 
export GIT_CONFIG_VALUE_21="log $GIT_LOG_ALL_FORMAT --all --graph -p"

export GIT_CONFIG_KEY_22="alias.ref" 
export GIT_CONFIG_VALUE_22="reflog $GIT_REF_LOG_FORMAT"

export GIT_CONFIG_KEY_23="alias.refg" 
export GIT_CONFIG_VALUE_23="reflog $GIT_REF_LOG_FORMAT --grep-reflog"

# show
export GIT_CONFIG_KEY_24="alias.so"
export GIT_CONFIG_VALUE_24="show $GIT_SHOW_FORMAT"

export GIT_CONFIG_KEY_25="alias.sos"
export GIT_CONFIG_VALUE_25="show $GIT_SHOW_FORMAT -s --oneline"

# tag
export GIT_CONFIG_KEY_26="alias.t"
export GIT_CONFIG_VALUE_26="tag $GIT_TAG_FORMAT"

export GIT_CONFIG_KEY_27="alias.ta"
export GIT_CONFIG_VALUE_27="tag $GIT_TAG_FORMAT -a"

export GIT_CONFIG_KEY_28="alias.tam"
export GIT_CONFIG_VALUE_28="tag $GIT_TAG_FORMAT -am"

export GIT_CONFIG_KEY_29="alias.tpa"
export GIT_CONFIG_VALUE_29="tag $GIT_TAG_FORMAT --points-at"

export GIT_CONFIG_KEY_30="alias.tcn"
export GIT_CONFIG_VALUE_30="tag $GIT_TAG_FORMAT --contains"

export GIT_CONFIG_KEY_31="alias.tncn"
export GIT_CONFIG_VALUE_31="tag $GIT_TAG_FORMAT --no-contains"

export GIT_CONFIG_KEY_32="alias.tmr"
export GIT_CONFIG_VALUE_32="tag $GIT_TAG_FORMAT --merged"

export GIT_CONFIG_KEY_33="alias.tnmr"
export GIT_CONFIG_VALUE_33="tag $GIT_TAG_FORMAT --no-merged"

# blame
export GIT_CONFIG_KEY_34="alias.bl"
export GIT_CONFIG_VALUE_34="blame --color-by-age --color-lines"

# for-each-ref
export GIT_CONFIG_KEY_35="alias.ferp"
export GIT_CONFIG_VALUE_35="-p for-each-ref --sort=refname $GIT_BRANCH_FORMAT --points-at"

export GIT_CONFIG_KEY_36="alias.fermr"
export GIT_CONFIG_VALUE_36="-p for-each-ref --sort=refname $GIT_BRANCH_FORMAT --merged"

export GIT_CONFIG_KEY_37="alias.fernmr"
export GIT_CONFIG_VALUE_37="-p for-each-ref --sort=refname $GIT_BRANCH_FORMAT --no-merged"

export GIT_CONFIG_KEY_38="alias.fercn"
export GIT_CONFIG_VALUE_38="-p for-each-ref --sort=refname $GIT_BRANCH_FORMAT --contains"

export GIT_CONFIG_KEY_39="alias.ferncn"
export GIT_CONFIG_VALUE_39="-p for-each-ref --sort=refname $GIT_BRANCH_FORMAT --no-contains"

# ls-files
export GIT_CONFIG_KEY_40="alias.lfd"
export GIT_CONFIG_VALUE_40="-p ls-files $GIT_LS_FORMAT --debug"

export GIT_CONFIG_KEY_41="alias.lt"
export GIT_CONFIG_VALUE_41="-p ls-tree $GIT_LS_FORMAT"

export GIT_CONFIG_KEY_42="alias.ltr"
export GIT_CONFIG_VALUE_42="-p ls-tree -r $GIT_LS_FORMAT"

# rev-list
export GIT_CONFIG_KEY_43="alias.rvl"
export GIT_CONFIG_VALUE_43="-p rev-list --abbrev-commit $GIT_REV_FORMAT"

# stash
export GIT_CONFIG_KEY_44="alias.hl"
export GIT_CONFIG_VALUE_44="stash list -p $GIT_STASH_FORMAT"
