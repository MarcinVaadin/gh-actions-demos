#!/bin/bash
echo "Monitoring path: $1"
echo "Writing output to: $2"
echo "Dependencies file: $3"
inotifywait -q -r -e create -e modify $1 -m | while read -r directory action file; do
  echo "$directory $action $file - compiling" >> $2
  javac -classpath "`cat $3`:target/classes" $dir/$file -d target/classes
done &

echo $! > watcher.pid
cat watcher.pid
