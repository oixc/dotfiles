#!/bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# dotfiles directory
dir=~/.dotfiles
# dotfiles backup directory
olddir=~/.dotfiles_backup

# create dotfiles_old in homedir
echo "change to ~"
cd ~
echo "create $olddir for backups"
mkdir -p $olddir

echo "backup .vimrc"
mv .vimrc $olddir
echo "create symlink to .vimrc"
ln -s $dir/vim/.vimrc .vimrc
