# Do everything.
all: init link defaults brew gitignore_global

# Set initial preference.
init:
	.bin/init.sh

# Link dotfiles.
link:
	.bin/link.sh

# Set macOS system preferences.
defaults:
	.bin/defaults.sh

# Install macOS applications.
brew:
	.bin/brew.sh

# Create global gitignore
gitignore_global:
	echo ".cursorignore\ncopilot-instructions.md" > ~/.gitignore_global
	git config --global core.excludesFile ~/.gitignore_global