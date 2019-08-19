#!/bin/sh

$(which wunderline) export | $(which jq) --raw-output '.data.lists[].tasks[] | select(.completed == false) .title' > /tmp/reminders.txt
$(which automator) create_reminders.workflow

exit 0
