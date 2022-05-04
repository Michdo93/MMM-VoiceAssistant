#!/bin/bash
while ! timeout 0.2 ping -c 1 -n google.com &> /dev/null
do
    echo "."
done
echo "Internet vorhanden, MagicMirror wird gestartet"
cd ~/MagicMirror && DISPLAY=:0 npm start
