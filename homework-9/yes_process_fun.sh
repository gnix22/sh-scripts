#!/usr/bin/env bash 
# start yes command and redirect into dev null, assign yesPID the process id for further use
echo "initiating 'yes' command to /dev/null to run in the background."
yes > /dev/null &
yesPID=$!
echo "the command was started, and PID has been captured; PID = $yesPID"

#using sleep to ensure program is running before start of next set of commands
sleep 1

#"runaway" process proof
echo "showing process is running"
ps -af

#this sleep is for timing purposes for theatrics
sleep 1

echo "now that ive shown you the process is running, im going to terminate the command"
kill $yesPID
# ensure process is terminated
sleep 1

echo "process has be terminated"
ps -af

echo "script has been completed, goodbye"
