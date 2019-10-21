#!/bin/bash

youtube-dl --extract-audio --audio-format mp3 -o "downloaded_mp3s/%(title)s.%(ext)s" $1
