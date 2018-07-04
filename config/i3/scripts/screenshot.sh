#!/bin/bash

scrot -s ~/foo.png && xclip -selection clipboard -t image/png -i ~/foo.png && rm ~/foo.png
if [ $? -eq 0 ]; then
  notify-send Screenshot "Saved to clipboard" -t 2000
fi
