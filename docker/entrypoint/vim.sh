#!/bin/sh

echo "";
echo "init vim";
## +100 kb

if [ "$(opkg list-installed | awk '{ print $1}' | grep -E 'vim')" != 'vim' ]; then
	## install vim is not installed
	opkg update
	opkg install vim
fi
