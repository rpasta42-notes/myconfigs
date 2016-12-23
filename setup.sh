#!/bin/bash

#####################
#===before install

#adduser kkostya
#usermod -aG sudo kkostya
#ssh-keygen -t rsa -b 4096 -C "kostelkow@gmail.com"

#===install packages from packages_install

#mkdir -p ~/orgs/{Kosandr,rpasta42-personal/{mynotes,mysnnipets/myutils}}
#mkdir -p ~/orgs/{Kosandr,rpasta42-personal}
#cd ~/orgs/rpasta42-personal; git clone git@github.com:rpasta42-personal/{mynotes.git,mysnippets.git,myconfigs.git,myutils}
#cd ~/orgs/Kosandr; git clone git@github.com:Kosandr/magic-pyjs-orm.git
#####################


backdir="backup/ver`python setup_scripts/get_counter.py`/"
mkdir -p $backdir
cp ~/.bashrc $backdir/DOTbashrc.OLD
cp ~/.pythonrc $backdir/DOTpythonrc.OLD
cp ~/.inputrc $backdir/DOTinputrc.OLD
cp ~/.vimrc $backdir/DOTvimrc.OLD

mv ~/.bashrc /tmp/DOTbashrc.TMP
cat conf_files/DOTbashrc.prepend /tmp/DOTbashrc.TMP conf_files/DOTbashrc >~/.bashrc

#cp conf_files/DOTpythonrc ~/.pythonrc
bash setup_scripts/py_config.sh

#cp conf_files/DOTvimrc ~/.vimrc
bash setup_scripts/vim_config.sh

echo "#======================end rpasta42-personal/myconfig" >>~/.bashrc

cp conf_files/DOTinputrc ~/.inputrc

