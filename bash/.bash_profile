#sourcing statement for virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
