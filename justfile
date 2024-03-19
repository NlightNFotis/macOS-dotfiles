# Bootstrap installation (doc instruction).
brew-install-all:
   brew bundle

# Will perform a dry-run of `brew bundle cleanup`, which uninstalls anything not in Brewfile.
brew-cleanup-dry-run:
   brew bundle cleanup
