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

# Add Homebrew-installed JDK to $PATH.
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# CPPFlAGS, LDFLAGS, etc.
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include -I/opt/homebrew/opt/ruby/include"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
