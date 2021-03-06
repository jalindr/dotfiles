#!/bin/bash
#################################################
# install.sh
# Create files, dir and install dotfiles
#################################################

################################################# Variables

DIR=~/dotfiles                    # dotfiles directory
OLDDIR=~/dotfiles.old             # old dotfiles backup directory
FILES="bash_profile bashrc vimrc"    # list of things to symlink in homedir
CONFDIR="bash_it vim/bundle/vundle"		# make default directory if not exits
# clone my bash_it repo and vundle repo to the dotfiles dir

################################################# check for old configs and create new directory's

for dircheck in $CONFDIR; do
		if [ ! -d $dircheck ]
	then
		echo "Creating Directory $dircheck"
		mkdir -p $dircheck
	else 
		echo "Directory $dircheck exits and may contain configurations back it up"
	
	fi
done

################################################# clone repos	
	
git clone https://github.com/jalindr/theNewBash.git bash_it
git clone https://github.com/jalindr/vundle.vim.git vim/bundle/vundle

# move any old dotfiles in homedir to dotfiles.old directory, create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files

for file in $FILES; do
    #echo "Moving any existing dotfiles from ~ to $olddir"
    #mv ~/.$file ~/dotfiles_old/
################################################ check if file exits if no create it and symlink it 
    echo "creating dot files"
		if [ ! -f $FILES ];
		cp $DIR/$FILES ~/.$FILES
	echo "Creating symlink to $file in home directory."
		ln -s $DIR/$FILES ~/.$FILES	
		fi
done

################################################# install bash_it 

echo "installing bash_it" 

chmod +x bash_it/install.sh 

./bash_it/install.sh

#end
