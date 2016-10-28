#!/bin/bash

DOTFILES_PATH=`pwd`

# Create symlinks to bash dotfiles
ln -s $DOTFILES_PATH'/.bash' ~/.bash
ln -s $DOTFILES_PATH'/.bash_profile' ~/.bash_profile
