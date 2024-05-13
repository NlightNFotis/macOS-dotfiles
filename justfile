# Bootstrap installation (doc instruction).
brew-install-all:
   brew bundle --file Brewfile
   brew bundle --file Brewfile.personal

# Sync personal software
brew-install-personal:
   brew bundle --file Brewfile.personal

# Sync work software
brew-install-work:
   brew bundle --file Brewfile

# Will perform a dry-run of `brew bundle cleanup`, which uninstalls anything not in Brewfile.
brew-cleanup-dry-run:
   brew bundle cleanup

# Will sync the Brewfile with the locally installed packages.
brew-sync-installed-packages:
   brew bundle dump --force
