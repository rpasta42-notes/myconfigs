#!/bin/bash

GIT_DIR_KEY=git@github.com:
GIT_DIR_HTTPS=https://github.com/
GIT_DIR=$GIT_DIR_HTTPS

mkdir -p ~/orgs/{Kosandr,rpasta42-personal}
bash -c "`echo "cd ~/orgs/rpasta42-personal; git clone $GIT_DIR/rpasta42-personal/"{mynotes.git,mysnippets.git,myconfigs.git,myutils}\;`"
cd ~/orgs/rpasta42-personal/myutils; ./setup.sh
bash -c "`echo "cd ~/orgs/Kosandr;           git clone $GIT_DIR/Kosandr/"{magic-pyjs-orm.git,utiltools.git,base-flask-skeleton.git}\;`"
cd ~/orgs/Kosandr/utiltools; make build; make install
cd ~/rpasta42-personal/myconfigs; ./setup.sh
