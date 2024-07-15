#!/bin/bash
inotifywait -q -e create -e modify $1 -m | while read -r directory action file; do
  echo "$directory $action $file" >> $2
done &

echo $! > watcher.pid
cat watcher.pid
