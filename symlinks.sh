#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

get_os() {

    declare -r OS_NAME="$(uname -s)"
    local os=""

    if [ "$OS_NAME" == "Darwin" ]; then
        os="osx"
    elif [ "$OS_NAME" == "Linux" ] && [ -e "/etc/lsb-release" ]; then
        os="ubuntu"
    fi

    printf "%s" "$os"

}


########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc colors gitconfig gitignore osxdefaults prompt"

# finds all .dotfiles in this folder
#declare -a FILES_TO_SYMLINK=$(find . -type f -maxdepth 1 -name "*" -not -name .DS_Store -not -name .git -not -name README.md -not name symlinks.sh -not name osxdefaults | sed -e 's|//|/|' )

##########

get_os

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
#for file in ${FILES_TO_SYMLINK[@]}; do
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    echo cp ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    echo ln -s $dir/$file ~/.$file
done

# vim colors should be a copy ?

