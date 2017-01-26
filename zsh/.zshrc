# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="sunrise"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export VISUAL="vim"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ $(uname -r) == *"ARCH"* ]]; then
  source /usr/bin/virtualenvwrapper.sh
  if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
  fi
else
  source /usr/local/bin/virtualenvwrapper.sh
fi

#used for zsh syntax highlighting
source ~/utils/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#custom aliases
alias svim="sudo vim"
alias deac="deactivate"
alias rf="rm -rf"
alias gcb="git checkout -b"
alias gbd="git branch -D"
alias gc="git commit -s"
alias gs="git status"
alias gr="git rebase"
alias gra="git remote add"
alias gp="git push"
alias gpor="git push origin master"
alias ..="cd .."
alias c="clear"
alias ll="ls -al"
alias grep="grep --color=auto"
alias headphones="pacmd set-default-sink alsa_output.usb-Schiit_Audio_USB_Modi_Device-00.iec958-stereo"
alias speakers="pacmd set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo"
alias lorelint="find . -name '*.md' -print | xargs -n1 textlint -c .textlintrc.js -f pretty-error"

# use correct sound player based on OS
if [[ "$(uname)"="Darwin" ]]; then
    alias play="afplay"
else
    alias play="mpg123 -q"
fi

alias whomp="play ~/sounds/price_horn.mp3 &"
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'
alias pbcopy="xclip -sel clip"

