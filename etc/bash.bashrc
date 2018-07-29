#=====================#
#		      #
# ENVIROMENT VARIABLE #
# /etc/bash.bashrc    #
#	    by Cawa   #
#		      #
#=====================#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

## Source some Variables and Options
# Source Aliases

#if [ -f /etc/b-aliases ]; then
#	. /etc/b-aliases
#fi

#BASH_ALIASES="/etc/bash_sw-aliases"

# Source Options

#if [ -f /etc/b-options ]; then
#	. /etc/b-options
#fi

# Source History Options

#if [ -f /etc/b-hist ]; then
#	. /etc/b-hist
#fi

## Source all Bash options and settings at once ##

for config in .b-aliases .b-options .b-hist "$HOSTNAME" ; do
	[[ -r $HOME/$config ]] && source "$HOME/$config"
done
unset config

## Tab width

	# if [[ $TERM = linux ]]; then
	#        setterm -regtabs 2
	# fi       

## Command Prompt Layout and Color

#PS1='[\u@\h \W]\$ '
PS1="[\[\033[1;31m\]\u\[\033[0m\]@\h] \W \$"

#case ${TERM} in
#  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#
#    ;;
#  screen*)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#    ;;
#esac

# Source Tmuxinator Completion
#source /etc/bash_sw-tmuxinator
