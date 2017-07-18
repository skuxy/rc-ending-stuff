# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#txtred="\[\e[1;32m\]"
#txtcyn="\[\e[1;33m\]"

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\\npucaj$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

printf "$(tput setaf 2)$(date +%d.%m.%Y.\ %H:%M:%S)\n$(tput setaf 0)" 

alias branches="git branch -v"
alias remotes="git remote -v"
alias denter="ssh root@development"
alias menter="ssh piss@off"
alias towork="cd ~/work/workfolder && ll"
alias tofer="cd ~/Documents/FER"
export KAPACITOR_URL=http://nope.some.secret.url:9092

export PYTHONIOENCODING=utf-8

alias vim="nvim"
alias vi="nvim"

# bash history, took me 5 years to do this one. Idiot.
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
# ln misbehaves
# ln misbehaves
alias pycharm="/opt/pycharm-2017.1.1/bin/pycharm.sh &"

shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Weather command, for Zagreb
alias weather="curl -s wttr.in/Zagreb | head -7"
alias weather_today="curl -s wttr.in/Zagreb | head -17"

# Recursive grep c
# urrent folder && its files
recursiveGrep() {
    grep "$@" -nr .
}

alias rgrep="recursiveGrep"

alias copy="xclip -selection clipboard"

export PATH=$PATH:/opt/pycharm-2017.1.1/bin
export PATH=$PATH:/home/skux/Projects/hub/bin

alias git="hub"

function cd_
{
    cd "$@"
    pwd > ~/.last_dir
}

cd `cat ~/.last_dir`

