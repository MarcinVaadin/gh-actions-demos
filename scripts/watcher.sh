#!/bin/bash
inotifywatch -v -e modify -r src/main/java > watcher-output.txt 2>&1 &
echo $! > watcher.pid
sleep 5
cat watcher.pid
cat watcher-output.txt
