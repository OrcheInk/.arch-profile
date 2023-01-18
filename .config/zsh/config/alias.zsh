# [A]

# @ arch-profile
alias arch="git --git-dir=$HOME/.arch-profile --work-tree=$HOME"

# [B]
# [C]

# @ common
alias p="cd ../"
alias h="cd -"
alias to="touch"
alias md="mkdir -p"
alias ls="ls --color"
alias al="ls -a"
alias ll="ls -l"
alias la="ls -la"
alias lsa="ls -a .*"

# [D]
# [E]
# [F]
# [G]

# @ git
alias g="git"

# @ gpg
alias gpgg="gpg --full-generate-key"
alias gpgl="gpg --list-keys"
alias gpge="gpg --armor --export"
alias gpges="gpg -a -o private-file.key --export-secret-keys"
alias gpgep="gpg -a -o public-file.key --export"
alias gpgi="gpg --import"
alias gpgh="curl https://github.com/web-flow.gpg | gpg --import"
alias gpgs="gpg --sign-key"

# [H]
# [I]
# [J]
# [K]
# [L]
# [M]

# [N]

# @ nvim
alias vim="nvim"

# [O]
# [P]
# [Q]
# [R]

# @ ranger
alias rr='ranger'
alias rrc='nvim $HOME/.config/ranger/commands.py'

# [S]

# @ scripts
alias fq='$ZDOTDIR/scripts/fquery'

# [T]

# @ trash-cli
alias ts='trash'
alias tsl='trash-list'
alias tse='trash-empty'
alias tsr='trash-restore'
alias tsm='trash-rm'

# [U]
# [V]
# [W]
# [X]
# [Y]

# [Z]

# @ zsh
alias zrc='vim $ZDOTDIR/.zshrc'
alias zso='source $ZDOTDIR/.zshrc'
alias zco='vim $ZDOTDIR/config'

# @ z.lua
alias zl="z -l"
alias zc="z -c"
alias ze="z -e"
alias zi="z -i"
alias zb="z -b"
alias zh="z -i -t"
alias zf="z -I"

