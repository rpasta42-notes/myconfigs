#!/bin/bash

GIT_DIR_KEY=git@github.com:
GIT_DIR_HTTPS=https://github.com/
GIT_DIR=$GIT_DIR_HTTPS



ALL_PKGS=vim git htop python3 python3-pip sshfs curl dstat
DEV_PKGS=tmux nginx

#PC Desktop
PCD_PKGS=terminator xmonad dmenu nethogs gedit git scrot clusterssh gpick gimp vlc thunar lm-sensors

sudo apt update
sudo apt -y install $ALL_PKGS
#sudo apt -y install $PCD_PKGS
sudo apt -y install $DEV_PKGS

#pip3 install --upgrade pip
sudo pip3 install
sudo pip3 install pyinotify #for pywatch
sudo pip3 install sh #for vivie



mkdir -p ~/orgs/{Kosandr,rpasta42-personal}
bash -c "`echo "cd ~/orgs/rpasta42-personal; git clone $GIT_DIR/rpasta42-personal/"{mynotes.git,mysnippets.git,myconfigs.git,myutils}\;`"
cd ~/orgs/rpasta42-personal/myutils; ./setup.sh
bash -c "`echo "cd ~/orgs/Kosandr;           git clone $GIT_DIR/Kosandr/"{magic-pyjs-orm.git,utiltools.git,base-flask-skeleton.git}\;`"
cd ~/orgs/Kosandr/utiltools; make build; make install
cd ~/rpasta42-personal/myconfigs; ./setup.sh



./setup.sh
