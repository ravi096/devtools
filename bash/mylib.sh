#!/bin/bash

#
# Collection of useful bash snippets
#

# Source https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
function yesno
{
    #DOC: Ask for confirmation. Will exit on a non-yes answer
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
    fi
}

function test
{
    yesno;echo "$? This is great"
}

test
