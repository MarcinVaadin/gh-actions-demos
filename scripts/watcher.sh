#!/bin/bash
echo "Monitoring path: $1"
echo "Dependencies file: $2"
inotifywait -q -r -e create -e modify $1 -m | while read -r directory action file; do
  echo "$directory $action $file - compiling" >> watcher.log
  javac -verbose -classpath "`cat $2`:target/classes" $dir/$file -d target/classes javac.log 2>&1
done &

echo $! > watcher.pid
cat watcher.pid
