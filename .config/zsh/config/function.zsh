function funlist() { grep "^#" $ZSH/config/function.zsh | awk 'gsub("#","");' }

#

# refunc: reload functions
function refunc() {
        for func in $argv
        do
                unfunction $func
                autoload $func
        done
}

# rename_tag: rename tag in git
function rename_tag() {
	SOURCE_TAG=$1 NEW_TAG=$2; \
	deref() { git for-each-ref "refs/tags/$SOURCE_TAG" --format="%($1)" }; \
	GIT_COMMITTER_NAME="$(deref taggername)" \
	GIT_COMMITTER_EMAIL="$(deref taggeremail)" \
	GIT_COMMITTER_DATE="$(deref taggerdate)" \
	git tag "$NEW_TAG" "$(deref "*objectname")" -a -m "$(deref contents)" && \
	git tag -d $SOURCE_TAG
}

# change_tag_message: change tag message in git
function change_tag_message() {
	SOURCE_TAG=$1 NEW_MESSAGE=$2; \
	deref() { git for-each-ref "refs/tags/$SOURCE_TAG" --format="%($1)" }; \
	GIT_COMMITTER_NAME="$(deref taggername)" \
	GIT_COMMITTER_EMAIL="$(deref taggeremail)" \
	GIT_COMMITTER_DATE="$(deref taggerdate)" \
	git tag "$SOURCE_TAG" "$(deref "*objectname")" -a -m "$NEW_MESSAGE" -f
}

# paci: fuzzy-search all available packages, with package info, and then install selected packages
function paci() { pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S }

# pacu: list all your installed packages, and then remove selected packages
function pacu() { pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns }

# pacp: list package file path
function pacp() { 
	pacman -Slq | fzf --multi --layout=reverse --height=90% \
	--preview 'cat <(pacman -Fl {1} | awk "{print \$2}")' 
}

# fkill: kill the process with the PID
function fkill() { 
	(date; ps -ef) | fzf \
      	--bind='ctrl-r:reload(date; ps -ef)' \
      	--header=$'Press CTRL-R to reload\n\n' --header-lines=2 \
      	--preview='echo {}' --preview-window=down,3,wrap \
      	--layout=reverse --height=90% | awk '{print $2}' | xargs kill -9
}

# gitlize: gitlize current directory
function gitize() { git init && git add . && git commit -a -m"initial commit" && git gc }

# ssh-add: wrap ssh-add to default to adding all identities in ${HOME}/.ssh
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

# url-search: search for links in a directory and format the output
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

# vimhelp: quick read help-files of Vim
function vimhelp () { vim -c "help $1" -c on -c "au! VimEnter *" }

# plist: list all programs with prefix
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

# mcd: mkdir && cd
function mcd() {
	test -z "$1" && echo mkcd: no path given && return
	test -d "$1" && print "mkcd: Directory $1 already exists"
	mkdir -p -- "$1"
	cd -- "$1"
}
