# Wunderlist to iCloud Reminders

Export Wunderlist tasks to iCloud reminders.

This script just blindly dumps all exported tasks from wunderlist and runs a simple applescript via automator to import into the reminders app. The bash script simply uses `jq` to find all uncompleted tasks based on the title.

If using iCloud for reminders, you'll see all imported reminders on all devices also using iCloud.

You could also run this script via a cronjob to regularly import wunderlist tasks, though you'll need to manually complete all the tasks on wunderlist.

## Prerequisites

- [wunderlist](https://github.com/wayneashleyberry/wunderline) (must authenticate wunderlist) or JSON export of all wunderlist tasks
- [jq](https://github.com/stedolan/jq)
- MacOS **(this only works if ran on a MacOS)**

### Install

```
$ git clone git@github.com:stevenirby/wunderlist-to-icloud-reminders.git
```

### Run

```
$ cd wunderlist-to-icloud-reminders
$ bash reminders.sh
```

### Tweak

The AppleScript could be easily tweaked to include things such as: notes, due date, reminder date, etc. Just open the workflow file in automator and tweak. You'll also need to tweak what gets outputted and read into the tmp reminder.txt file that gets created.
