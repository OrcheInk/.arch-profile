function funlist() { grep "^#" $ZDOTDIR/config/function.zsh | awk 'gsub("#","");' | most }

function refunc() {
        for func in $argv
        do
                unfunction $func
                autoload $func
        done
}

# git_grep(git): grep info
# 	usage: @ <git_command> <grep_info> [arch]
#
function git_grep(){
	if [ "$3" = arch ]
	then
		git --git-dir=/home/loop/.arch-profile --work-tree=/home/loop $1 | grep $2 | most
	else
		git $1 | grep $2 | most
	fi
}

# tag_verify(git): verify GPG tag
# 	usage: @ <tag>
#
function tag_verify() {
	echo ''
	git tag -v $1 | grep gpg
}

# rename_tag(git): rename tag
# 	usage: @ <tag> <new_name>
#
function rename_tag() {
	SOURCE_TAG=$1 NEW_TAG=$2; \
	deref() { git for-each-ref "refs/tags/$SOURCE_TAG" --format="%($1)" }; \
	GIT_COMMITTER_NAME="$(deref taggername)" \
	GIT_COMMITTER_EMAIL="$(deref taggeremail)" \
	GIT_COMMITTER_DATE="$(deref taggerdate)" \
	git tag "$NEW_TAG" "$(deref "*objectname")" -a -m "$(deref contents)" && \
	git tag -d $SOURCE_TAG
}

# change_tag_message(git): modify tag message
# 	usage: @ <tag> <new_message>
#
function change_tag_message() {
	SOURCE_TAG=$1 NEW_MESSAGE=$2; \
	deref() { git for-each-ref "refs/tags/$SOURCE_TAG" --format="%($1)" }; \
	GIT_COMMITTER_NAME="$(deref taggername)" \
	GIT_COMMITTER_EMAIL="$(deref taggeremail)" \
	GIT_COMMITTER_DATE="$(deref taggerdate)" \
	git tag "$SOURCE_TAG" "$(deref "*objectname")" -a -m "$NEW_MESSAGE" -f
}

# branch_log(git): show target branch log from fork-point
# 	usage: @ <parent_branch> [branch]
#
function branch_log() {
	if [ ! -n "$2" ] 
	then
		git l "$(git merge-base $1 HEAD)..HEAD"
	else
		git l "$(git merge-base $1 $2)..$2"
	fi
}

# merge_base(git): find merge-base of two branch
# 	usage: @ [--fork-point] <branch> <branch>
#
function merge_base() {
	git merge-base $1 $2 $3 | xargs git sos
}

# rebase_branch(git): rebsae current branch form merge-base
# 	usage: @ <parent_branch>
#
function rebase_branch() {
	git rbi $(git merge-base $1 HEAD)
}

# ancestor(git): check ancestor
# 	usage: @ <branch> <branch>
#
function ancestor() {
	if git merge-base --is-ancestor $1 $2 
	then
		echo "... $1 is an ancestor of $2 ..."
	else
		echo "... false ..."
	fi
}

# branch_gone(git): delete branch has gone
#
function branch_gone() {
	git for-each-ref --format='%(refname:short) %(upstream:track)' refs/heads/ |\
    	sed -n '/ *\[gone\].*$/{s@@@;p}' | xargs git branch -D
}

# commit_filter(git): remove file from history commit
# 	usage: @ [arch/git] <file>
#
function commit_filter(){
	$1 filter-branch --force --index-filter "$1 rm --cached --ignore-unmatch $2"
}

# paci(pacman): fuzzy-search all available packages, interactive install selected packages
#	usage: @
#
function paci() { pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S }

# pacu(pacman): list all your installed packages, interactive remove selected packages
#	usage: @
#
function pacu() { pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns }

# pacp(pacman): list package file path
#	usage: @
#
function pacp() { 
	pacman -Slq | fzf --multi --layout=reverse --height=90% \
	--preview 'cat <(pacman -Fl {1} | awk "{print \$2}")' 
}

# fkill(*): kill the process with the PID
#	usage: @ <pid>
#
function fkill() { 
	(date; ps -ef) | fzf \
      	--bind='ctrl-r:reload(date; ps -ef)' \
      	--header=$'Press CTRL-R to reload\n\n' --header-lines=2 \
      	--preview='echo {}' --preview-window=down,3,wrap \
      	--layout=reverse --height=90% | awk '{print $2}' | xargs kill -9
}

# ssh-add(ssh): wrap ssh-add to default to adding all identities in ${HOME}/.ssh
#	usage: @
#
function ssh-add() {
	local files
	if [[ $# -eq 0 ]] ; then
		for i in id_dsa id_rsa identity ; do
			if [[ -f $HOME/.ssh/$i ]] ; then
				files=($files $HOME/.ssh/$i)
			fi
		done
	else
		files=( "$@" )
	fi
	command ssh-add $files
}

# url-search(*): search for links in a directory and format the output
#	usage: @
#
function url-search() {
        if [[ $# = 0 ]]
        then
                echo "Usage   : $0 directory"
                echo "Example : $0 ~/Mail"
                echo "Example : $0 directory | \$PAGER"
                echo "Example : $0 directory > logfile"
        else
                egrep -r -h -i '((ftp|https|http|www):.*)' $1 | awk -f ~/bin/fnord.awk | sort | uniq 
        fi
}

# vimhelp(vim): quick read help-files of Vim
#	usage: @
#
function vimhelp () { vim -c "help $1" -c on -c "au! VimEnter *" }

# plist(*): list all programs with prefix
# 	usage: @ <prefix>
#
function plist() {
        if [[ $# = 0 ]]
        then
                echo "Usage:    $0 program"
                echo "Example:  $0 zsh"
                echo "Lists all occurrences of program in the current PATH."
        else
		ls -l ${^path}/*$1*(*N)
	fi
}

# mcd(*): mkdir && cd
# 	usage: @ <directory>
#
function mcd() {
	test -z "$1" && echo mkcd: no path given && return
	test -d "$1" && print "mkcd: Directory $1 already exists"
	mkdir -p -- "$1"
	cd -- "$1"
}
