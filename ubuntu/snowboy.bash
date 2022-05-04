#!/bin/bash
while ! timeout 0.2 ping -c 1 -n google.com &> /dev/null
do
    echo "."
done
echo "Internet vorhanden, Snowboy wird gestartet"
cd ~/MagicMirror/modules/MMM-VoiceAssistant/ubuntu
~/env/bin/python3 demo.py smart_mirror.umdl snowboy.umdl

