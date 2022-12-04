#!/bin/bash

# script to setup ssh keys if they are not present
#
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent


if [[ ! -e /home/alex/ ]]; then
	echo "user alex does not exist. exiting."
	return 1
fi

if [[ -e /home/alex/.ssh/id_ed25519 ]]; then
	echo "ssh keys exist already"
else
	echo "creating ssh keys"
	ssh-keygen -t ed25519 -C "alex23667@gmail.com" -N "" -f /home/alex/.ssh/id_ed25519
	eval "$(ssh-agent -s)"
	ssh-add /home/alex/.ssh/id_ed25519
	echo "ssh key created in /home/alex/.ssh/"
	echo "TODO: add key to github"
fi
