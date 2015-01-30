#!/bin/sh
ls -p | grep / | 
  while read line
  do
    cmd="mv $line${line%/}.mp4 ."
    #echo $cmd
    eval $cmd 
  done
