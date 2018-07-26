############################
#                          #
# DOTFILES                 #
# /etc/.bashrc             #
#        by Cawa           #
#                          #
############################

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

## Bash Prompt Colors

reset=$(tput sgr 0)
orange=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
white=$(tput setaf 7)
dim_yello=$(tput setaf 11)
pale=$(tput setaf 14)
dark_green=$(tput setaf 22)
dim_green=$(tput setaf 29)
dark_blue=$(tput setaf 25)
sea_green=$(tput setaf 35)
dark_red=$(tput setaf 160)
dim_orange=$(tput setaf 166)


## Custom Prompt with (tput)

TITLEBAR='\[\e]0;\u@\h: \w\a\]'
PS1=$TITLEBAR'[\[$green\][\u@\h]\[$reset\]][\W]\$ '

#if [[ -z "$TMUX" ]] ; then
#	ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )"
#	if [[ -z "$ID" ]] ; then
#		tmux new-session
#	else
#		tmux attach-session -t "$ID"
#	fi
#fi

# Source /ETC/BASH.BASHRC

if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# Powerline Bash Prompt options

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. "/usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh"


# Command Prompt for User Cawa
# including Window Title

# PS1="\[\e]2;\W\a\]\[\[\033[0;32m\]\u\[\033[0m\]@\h]\$"
# PS1="[\[\033[0;32m\]\u\[\033[0m\]@\h] \W \$ "
