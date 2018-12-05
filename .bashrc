#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Sync googledrive via grive2
alias driveupdate='~/my_gits/randomscripts/google-drive-sync.sh'

# Installed via dkms, should be working through aur now
# THIS SHOULD ONLY BE USED FOR PC.
# alias installwifi='sudo dkms install -m rtl8814au -v 4.3.21'

#Perform system update with yay
alias updatewithyay='yay -Syu --devel --timeupdate'

#Update mirrorlist via reflector
alias mirrorupdate='sudo reflector --country Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

#Update bashrc
alias updatealias='source ~/.bashrc'

#Open bashrc to open bashrc to add aliases
#And yes I know its nano. Shut up.
#I'll learn vim. Someday.
alias openbash='nano ~/.bashrc'

#Clones github repo
getrepo() {
	git clone "$1"
}

#Update/create dotfiles
#Yay backups
alias config='/usr/bin/git --git-dir=/home/karlo/.cfg/ --work-tree=/home/karlo'
