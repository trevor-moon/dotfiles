# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# force color prompt
force_color_prompt=yes

# Include bash functions
if [[ -e $HOME/.bash_functions ]]; then
	. $HOME/.bash_functions
fi

# Include bash aliases
if [[ -e $HOME/.bash_aliases ]]; then
	. $HOME/.bash_aliases
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/trevor/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/trevor/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/trevor/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/trevor/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# export git-aware prompt
export GITAWAREPROMPT="$HOME/.bash/git-aware-prompt"
. "$GITAWAREPROMPT/main.sh"

# change bash profile
export DEFAULT_PS1="[\u@\h \W]\\$ "
export PS1="[\u@\h \w]\[\033[0;32m\]$\[\033[00m\] "
