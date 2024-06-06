################################################################################
#                                                                              #
#                                  Prompt                                      #
#                                                                              #
################################################################################

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="sunrise"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

#used for zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/grep/libexec/gnubin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
export VISUAL="vim"
# export MANPATH="/usr/local/man:$MANPATH"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    tmux
)

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

# path for global golang installation
export PATH=$PATH:/usr/local/go/bin

# path for golang bins
export PATH=$PATH:/home/eggshell/go/bin

################################################################################
#                                                                              #
#                                 Aliases                                      #
#                                                                              #
################################################################################

# system
alias api="cd ~/git/api"
alias infra="cd ~/git/infra"
alias tf="cd ~/git/terraform"
alias payments="cd ~/git/payments"
alias finorc="cd ~/git/financial_orchestration"
alias c="clear"
alias caff="xscreensaver-command -exit"
alias decaff="nohup xscreensaver > /dev/null 2>&1 &!"
alias dev="cd ~/dev"
alias dotfiles="cd ~/dotfiles"
alias getssh="cat /home/eggshell/.ssh/id_rsa.pub | pbcopy"
alias grep="grep --color=auto"
alias lock="open -b com.apple.ScreenSaver.Engine"
alias rf="rm -rf"
alias svim="sudo vim"
alias ..="cd .."
alias cpucheck="ps aux | sort -rk 3,3 | head -n 5"
alias hdmi="xrandr --output HDMI1 --auto"
alias office="xrandr --output DP3-1 --mode 2560x1440 --scale 1x1 --fb 4480x3640 --left-of eDP1 --dpi 108"
alias notes="vim ~/notes.txt"
alias screenshot="import -window root screen.png"
alias memcheck="ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -5"
alias yt="youtube-viewer"
alias watch="watch "
alias f="fzf"
alias sb="cd ~/git/sportsbook"

# git-related
alias gcb="git checkout -b"
alias gbd="git branch -D"
alias gc="git commit"
alias gs="git status"
alias gr="git rebase"
alias gra="git remote add"
alias gp="git push"
alias gpor="git push origin master"

# python-related
alias deac="deactivate"
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'

# kubernetes
alias k="kubectl"
# gcloud/k8s 1.25 prep
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# gcloud
alias staging="/bin/bash -c /Users/eggshell/git/gcloud-contexts/staging"
alias aws-staging="/bin/bash -c /Users/eggshell/git/gcloud-contexts/aws-staging"
alias aws-prod="/bin/bash -c /Users/eggshell/git/gcloud-contexts/aws-prod"
alias aws-develop="/bin/bash -c /Users/eggshell/git/gcloud-contexts/aws-develop"
alias aws-cert="/bin/bash -c /Users/eggshell/git/gcloud-contexts/aws-cert"
alias qa="/bin/bash -c /Users/eggshell/git/gcloud-contexts/qa"
alias prod="/bin/bash -c /Users/eggshell/git/gcloud-contexts/prod"
alias sb-staging="/bin/bash -c /Users/eggshell/git/gcloud-contexts/sb-staging"
alias int="/bin/bash -c /Users/eggshell/git/gcloud-contexts/integration"
alias develop="/bin/bash -c /Users/eggshell/git/gcloud-contexts/develop"

################################################################################
#                                                                              #
#                                 Windows                                      #
#                                                                              #
################################################################################

# Turn off all beeps
# unsetopt BEEP

# Change directory colors for WSL terminals.
# eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)

### google cloud
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

### ruby / asdf
source "$(brew --prefix asdf)/libexec/asdf.sh"
source "$(brew --prefix asdf)/etc/bash_completion.d/asdf.bash"

### docker
#export DOCKER_DEFAULT_PLATFORM=linux/amd64

### golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

### nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# gpg
export GPG_TTY=$(tty)
. "/Users/eggshell/.acme.sh/acme.sh.env"
