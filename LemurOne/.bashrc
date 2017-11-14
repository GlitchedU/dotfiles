#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -Alh --color=auto'
alias c='clear'
alias ac='cd ~; clear;'
# cowsay whatis random command
alias cow?='whatis $(ls /bin | shuf -n 1) | cowsay'
# stream animated text star wars
alias starwars='telnet towel.blinkenlights.nl'
alias man='vman'
alias mman='command man'
alias archey='archey3'
alias python='python2'
alias chess='python3 ~/Games/cl-chess/main.py'
alias wer='poweroff'

# Command Prompt
#PS1='[\u@\h \W]\$ '
PS1="\[\033[0;36m\][\u@\h \W]\$\[\033[0m\] "

export PS1

# cd then ls function/alias
function cs () {
    cd "$@" && ls
    }

# cowsay give what is of random command when opening terminal
#whatis $(ls /bin | shuf -n 1) | cowsay

# used for the Superman vim plugin to allow vim to view man pages with 'vman'
vman() {
    vim -c "SuperMan $*"
        if [ "$?" != "0" ]; then
            echo "No manual entry for $*"
                fi
}

# git auto-completion
if [ -f ~/.git-completion.bash ]; then
source ~/.git-completion.bash
fi

EDITOR=vim
VISUAL=vim

