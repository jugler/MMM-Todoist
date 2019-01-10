#Send Magic Mirror config to pimirror
#echo "Uploading config.js to MagicMirror"
#scp config.js pi@pi:MagicMirror/config/config.js

echo "Updating module MMM-Todoist"
scp MMM-Todoist.js pi@pi:MagicMirror/modules/MMM-Todoist/MMM-Todoist.js
scp node_helper.js pi@pi:MagicMirror/modules/MMM-Todoist/node_helper.js
scp MMM-Todoist.css pi@pi:MagicMirror/modules/MMM-Todoist/MMM-Todoist.css

echo "Restarting MagicMirror"
ssh pi@pi 'pm2 restart mm'
echo "Done Uploading and restarting magic mirror"