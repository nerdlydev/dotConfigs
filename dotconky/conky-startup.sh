#!/bin/sh

if [ "$DESKTOP_SESSION" = "cinnamon" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/Rastaban"
   conky -c "$HOME/.conky/Rastaban/Rastaban.conf" &
   exit 0
fi
