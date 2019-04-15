#!/usr/bin/env bash
if [ -f ~/.bash_aliases ]; then
    echo "Appending bash aliases to ~/.bash_aliases..."
    cat bash_aliases >> ~/.bash_aliases
else
    echo "Copying bash aliases to ~/ ..."
    cp bash_aliases ~/.bash_aliases
fi

echo "Copied aliases to ~/.bash_aliases"
echo "NOTE: make sure ~/.bashrc loads them!"
