#!/bin/zsh

# Initialise starship as a first bit of order.
eval "$(starship init zsh)"

# opam configuration
[[ ! -r /Users/fotiskoutoulakis/.opam/opam-init/init.zsh ]] || source /Users/fotiskoutoulakis/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Install Homebrew Ruby path first before autoloading Rubies from chruby.
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Ruby config (will autoload ruby based on .ruby-version in local directory.)
# Requirement: Ruby has been installed with ruby-install ruby a ~/.rubies exists
if [ ! -d $HOME/.rubies ]; then
  # Make sure at least one (latest) version of ruby is installed in ~/.rubies
  ruby-install ruby
fi
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# Setup GOPATH correctly and add Go to $PATH.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add SMLNJ to the PATH
export PATH=/usr/local/smlnj/bin:"$PATH"

# Add Homebrew-installed JDK to $PATH.
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# CPPFlAGS, LDFLAGS, etc.
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include -I/opt/homebrew/opt/ruby/include"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"

# NVM configuration (taken from the Homebrew instructions).
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Bash/ZSH completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
autoload -Uz compinit && compinit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

