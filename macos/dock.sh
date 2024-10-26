#!/usr/bin/env bash
# Replace dock apps with preferred default list

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Firefox Developer Edition.app"

dockutil --no-restart --add "~/dev/apps/VerticalBarBS/VerticalBar.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Notes.app"
dockutil --no-restart --add "/Applications/Obsidian.app"

dockutil --no-restart --add "~/dev/apps/VerticalBarBS/VerticalBar 2.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Music.app"
dockutil --no-restart --add "/Applications/System Settings.app"

dockutil --no-restart --add "~/dev/apps/VerticalBarBS/VerticalBar 3.app"
dockutil --no-restart --add "/Applications/GitHub Desktop.app"
dockutil --no-restart --add "/Applications/Visual Studio Code - Insiders.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/Zed.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Hyper.app"
dockutil --no-restart --add "/Applications/Postman.app"
dockutil --no-restart --add "/Applications/Docker.app"

dockutil --no-restart --add "~/dev/apps/VerticalBarBS/VerticalBar 4.app"
dockutil --no-restart --add "/Applications/1Password.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/zoom.us.app"

killall Dock
