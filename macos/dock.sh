#!/usr/bin/env bash
# Replace dock apps with preferred default list

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Firefox Developer Edition.app"

dockutil --no-restart --add "~/Dropbox (LCBC Church)/Apps/VerticalBar.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Notes.app"

dockutil --no-restart --add "~/Dropbox (LCBC Church)/Apps/VerticalBar 2.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/System Preferences.app"

dockutil --no-restart --add "~/Dropbox (LCBC Church)/Apps/VerticalBar 3.app"
dockutil --no-restart --add "/Applications/1Password 7.app"
dockutil --no-restart --add "/Applications/Sourcetree.app"
dockutil --no-restart --add "/Applications/Sequel Pro.app"
dockutil --no-restart --add "/Applications/MAMP/MAMP.app"
dockutil --no-restart --add "/Applications/Visual Studio Code - Insiders.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/Atom.app"
dockutil --no-restart --add "/Applications/SQL Operations Studio.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/CodeKit.app"
dockutil --no-restart --add "/Applications/DB Browser for SQLite.app"
dockutil --no-restart --add "/Applications/Cyberduck.app"

dockutil --no-restart --add "~/Dropbox (LCBC Church)/Apps/VerticalBar 4.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Microsoft Outlook.app"
dockutil --no-restart --add "/Applications/Parallels Desktop.app"

killall Dock
