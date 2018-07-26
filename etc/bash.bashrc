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

if [ -f /etc/bash_sw-aliases ]; then
	. /etc/bash_sw-aliases
fi

#BASH_ALIASES="/etc/bash_sw-aliases"

# Source Options

if [ -f /etc/bash_sw-options ]; then
	. /etc/bash_sw-options
fi

# Source Env Options

#if [ -f /etc/bash_sw-env ]; then
#	. /etc/bash_sw-env
#fi

# Source History Options

if [ -f /etc/bash_sw-hist ]; then
	. /etc/bash_sw-hist
fi

## Command Prompt Layout and Color

#PS1='[\u@\h \W]\$ '
PS1="[\[\033[1;31m\]\u\[\033[0m\]@\h] \W \$"


#case ${TERM} in
#  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#
#    ;;
#  screen*)
#   PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#    ;;
#esac


# Source Tmuxinator Completion

source /etc/bash_sw-tmuxinator

# Bash Completion

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
