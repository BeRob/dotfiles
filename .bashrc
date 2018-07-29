############################
#                          #
# DOTFILES                 #
# /etc/.bashrc             #
#        by Cawa           #
#                          #
############################

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

export TTY=$(tty)
export GPG_TTY=$TTY

	# for config in .b-aliases .b-hist .b-options .bashrc "$HOSTNAME"; do
	# 	[[ -r $HOME/$config ]] && . "$HOME/$config"
	# done
	# unset config

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

TITLEBAR="\[\e]0;\u@\h: \w\a\]"
PS1=$TITLEBAR"[\[$green\][\u@\h]\[$reset\]][\W]\$ "

## Powerline Bash Prompt options

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source "/usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh"

## Source /ETC/BASH.BASHRC

if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi
