#!/bin/bash

cd /home/gopal/Videos/

for f in *.mp4
do
  echo "Processing $f file..."
  if [[ $(ffprobe $f 2>&1 | grep 'rotate') = *90* ]]; then
    echo "$f is : Portrait: Moving it...."
    mv $f /home/gopal/Documents/portrait/
  elif [[ $(ffprobe $f 2>&1 | grep 'rotate') = *270* ]]; then
    echo "$f is : Portrait: Moving it...."
    mv $f /home/gopal/Documents/portrait/
  else
    echo "$f is : Landscape: Moving it...."
    mv $f /home/gopal/Documents/landscape/
  fi
done