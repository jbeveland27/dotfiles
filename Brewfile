cask_args appdir: '/Applications'

# Taps
tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'
tap 'heroku/brew'
tap 'homebrew/bundle'
tap "homebrew/core"


# Install ZSH
# Make sure /usr/bin/env/zsh is appended to /etc/shells (this is done in install.sh)
brew 'zsh'
brew 'zsh-completions'

# Install GNU core utilities (those that come with macOS are outdated)
brew 'coreutils'

# Install some other useful utilities like `sponge`.
brew 'moreutils'

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew 'findutils'

# Install GNU `sed`, overwriting the built-in `sed`.
brew 'gnu-sed', args: ['with-default-names']

# Install Bash 4
brew 'bash'
brew 'bash-completion2'

# Install more recent versions of some macOS tools
brew 'grep'

# Install Useful Binaries
brew 'awscli'
brew 'ack'
brew 'dockutil'
brew 'git' #look at atlassian setup guide to remove outdated version of git
brew 'git-lfs'
brew 'heroku/brew/heroku'
brew 'httpie'
brew 'imagemagick'
brew 'mackup'
brew 'mas'
brew 'openssl'
brew 'rlwrap'
brew 'tree'
brew 'unar'
brew 'wget'

# Development
# clojure depends on java, so run the java install first
cask 'java'
brew 'clojure'
brew 'mongodb'
brew 'postgresql'
brew 'rbenv'
brew 'sqlite'
brew 'the_silver_searcher'
brew 'tmux'
brew 'vim'
brew 'watchman'
brew "yarn", args: ["without-node"]

# GUI Apps
cask '1password'
cask 'atom'
cask 'codekit'
cask 'cyberduck'
cask 'db-browser-for-sqlite'
cask 'dropbox'
cask 'firefox-developer-edition'
cask 'google-chrome'
cask 'github'
cask 'handbrake'
cask 'imageoptim'
cask 'iterm2'
cask 'mamp'
cask 'microsoft-remote-desktop-beta'
cask 'parallels'
cask 'sequel-pro'
cask 'slack'
cask 'sourcetree'
cask 'spectacle'
cask 'spotify'
cask 'sql-operations-studio'
cask 'sublime-text'
cask 'vagrant'
cask 'virtualbox'
cask 'virtualbox-extension-pack'
cask 'visual-studio-code'
cask 'visual-studio-code-insiders'
cask 'zoomus'

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
cask 'qlcolorcode'
cask 'qlmarkdown'
cask 'quicklook-json'
cask 'quicklook-csv'
cask 'qlstephen'
cask 'qlprettypatch'
cask 'betterzip'
cask 'qlimagesize'
cask 'webpquicklook'
cask 'suspicious-package'

# Fonts
cask 'font-source-code-pro-for-powerline'
cask 'font-source-code-pro'
cask 'font-source-sans-pro'
cask 'font-source-serif-pro'

# Font tools
tap 'bramstein/webfonttools'
brew 'sfnt2woff'
brew 'sfnt2woff-zopfli'
brew 'woff2'
