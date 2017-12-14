################################################################################
#                                                                              #
#                          Environment Variables                               #
#                                                                              #
################################################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export VISUAL="vim"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

# path for global npm package installations
export NODE_PATH=/usr/local/lib/node_modules

# mac-specific
if [ -f /usr/local/bin/brew ]; then
    # Added by the Bluemix CLI
    source /usr/local/Bluemix/bx/zsh_autocomplete
fi


################################################################################
#                                                                              #
#                                 Aliases                                      #
#                                                                              #
################################################################################

# system
alias c="clear"
alias grep="grep --color=auto"
alias ll="ls -al"
alias pbcopy="xclip -sel clip"
alias rf="rm -rf"
alias svim="sudo vim"
alias ..="cd .."

# git-related
alias gcb="git checkout -b"
alias gbd="git branch -D"
alias gc="git commit -s"
alias gs="git status"
alias gr="git rebase"
alias gra="git remote add"
alias gp="git push"
alias gpor="git push origin master"

# python-related
alias deac="deactivate"
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'

# mac-specific
if [ -f /usr/local/bin/brew ]; then
    alias marchey="archey -c"
fi

# arch-specific
if [ -f /usr/bin/pacman ]; then
    alias archey="archey3"
    alias lock="xscreensaver-command --lock"
fi


################################################################################
#                                                                              #
#                                  Prompt                                      #
#                                                                              #
################################################################################

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="sunrise"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

#used for zsh syntax highlighting
source /usr/local/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export VISUAL="vim"
# export MANPATH="/usr/local/man:$MANPATH"


################################################################################
#                                                                              #
#                                 Python                                       #
#                                                                              #
################################################################################

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs

# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true

# source the correct location for virtualenvwrapper based on os
if [ -f /usr/bin/pacman ]; then
    source /usr/bin/virtualenvwrapper.sh
else
    source /usr/local/bin/virtualenvwrapper.sh
fi


################################################################################
#                                                                              #
#                                 System                                       #
#                                                                              #
################################################################################

# start x (tty1) on arch and ubuntu
if [[ -f /usr/local/bin/brew || -f /usr/bin/pacman ]]; then
    if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
        exec startx
    fi
fi
