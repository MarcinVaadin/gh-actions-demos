#!/bin/bash
inotifywatch -v -e modify -r src/main/java > watcher-output.txt 2>&1 &
echo $! > watcher.pid
