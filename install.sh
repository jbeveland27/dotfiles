#!/bin/sh
# This borrows on ideas present in thoughtbot/laptop/mac and driesvints/dotfiles/install.sh

###############################################################################
# Functions                                                                   #
###############################################################################
fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

append_to_zshrc() {
  local text="$1" zshrc
  local skip_new_line="${2:-0}"

  if [ -w "$HOME/.zshrc.local" ]; then
    zshrc="$HOME/.zshrc.local"
  else
    zshrc="$HOME/.zshrc"
  fi

  if ! grep -Fqs "$text" "$zshrc"; then
    if [ "$skip_new_line" -eq 1 ]; then
      printf "%s\n" "$text" >> "$zshrc"
    else
      printf "\n%s\n" "$text" >> "$zshrc"
    fi
  fi
}

update_shell() {
  local shell_path;
  shell_path="$(which zsh)"

  fancy_echo "Changing your shell to zsh ..."
  if ! grep "$shell_path" /etc/shells > /dev/null 2>&1 ; then
    fancy_echo "Adding '$shell_path' to /etc/shells"
    sudo sh -c "echo $shell_path >> /etc/shells"
  fi
  sudo chsh -s "$shell_path" "$USER"
}

###############################################################################
# Run Setup                                                                   #
###############################################################################

fancy_echo "Setting up your Mac..."

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store.
fancy_echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Make sure xcode command line utils are installed...this step could take awhile
xcode-select --install

# Check for Homebrew and install if we don't have it
if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  fancy_echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
elif test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update --force # https://github.com/Homebrew/brew/issues/1151

# Upgrade any already-installed formulae.
brew upgrade

# Install all our dependencies with bundle (See Brewfile)
brew bundle

######################################################################
# Make ZSH the default shell environment (ZSH is installed in Brewfile)
case "$SHELL" in
  */zsh)
    if [ "$(which zsh)" != '/usr/local/bin/zsh' ] ; then
      update_shell
    fi
    ;;
  *)
    update_shell
    ;;
esac
# chsh -s $(which zsh) think this was a typo...

# Install NVM
if [ ! -f "$HOME/.nvm/nvm.sh" ]
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
fi
source ~/.nvm/nvm.sh
nvm install --lts


# Create some default Development directories
# check if the directory exists first...
mkdir $HOME/Development
mkdir $HOME/Development/GitHub
mkdir $HOME/Development/Graphics
mkdir $HOME/Development/VSCodeWorkspaces

# Symlink the Mackup config file to the home directory
#ln -s ./.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source macos/.macos
