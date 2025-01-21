#!/bin/bash

if [ "$(kitten @ ls --match-tab title:d2server 2> /dev/null)" ]; then
	kitty @ send-text --exclude-active --match-tab title:d2server $1
else
	kitten @ launch --type=tab --tab-title d2server --keep-focus bash
	kitty @ send-text --exclude-active --match-tab title:d2server $1
fi
