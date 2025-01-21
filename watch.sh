#!/bin/bash
cd $(dirname $0)

if [[ ! -e $1 ]]; then
    touch $1
	echo 'x -> y' > $1
fi

d2 --layout=elk -w $1 $2 --font-regular=./config/JetBrainsMono-Regular.ttf --font-italic=./config/JetBrainsMono-Italic.ttf  --font-bold=./config/JetBrainsMono-Bold.ttf --pad 10 -t 200
