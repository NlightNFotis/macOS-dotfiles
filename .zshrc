source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# opam configuration
[[ ! -r /Users/fotiskoutoulakis/.opam/opam-init/init.zsh ]] || source /Users/fotiskoutoulakis/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

chruby ruby-3.2.2

eval "$(starship init zsh)"
