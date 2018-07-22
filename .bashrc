############################
#                          #
# DOTFILES                 #
# /etc/.bashrc             #
#        by Cawa           #
#                          #
############################

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

# Source /ETC/BASH.BASHRC

if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# Command Prompt for User Cawa
# including Window Title

PS1="\[\e]2;\W\a\]\[\[\033[0;32m\]\u\[\033[0m\]@\h]\$"
