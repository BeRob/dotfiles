#
# ~/.bash_profile
#

#===============================================#
# User specific enviroment and startup programs #
#===============================================#

# export TERM=rxvt
# export TERM=rxvt-unicode
# export EDITOR=vim
# export VISUAL=atom

#================#
# Source .bashrc #
#================#

if [ -n "$BASH" ]; then
	[ -r "$HOME/.bashrc" ] && . ~/.bashrc
fi
