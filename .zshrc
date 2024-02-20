# Initialise starship as a first bit of order.
eval "$(starship init zsh)"

# opam configuration
[[ ! -r /Users/fotiskoutoulakis/.opam/opam-init/init.zsh ]] || source /Users/fotiskoutoulakis/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Ruby config
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.2.2
# FOTIS: TODO: Cleanup?
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Setup GOPATH correctly and add Go to $PATH.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add Homebrew-installed JDK to $PATH.
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# CPPFlAGS, LDFLAGS, etc.
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include -I/opt/homebrew/opt/ruby/include"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
