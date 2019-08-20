#!/bin/sh

$(which wunderline) export | $(which jq) --raw-output '.data.lists[].tasks[] | select(.completed == false) .title' > /tmp/reminders.txt
# AppleScript in workflow is largely just this code slightly modified
# https://gist.github.com/n8henrie/c3a5bf270b8200e33591
$(which automator) create_reminders.workflow

exit 0
