#!/bin/bash

echo "#======================rpasta42-personal/myconfig" >>~/.bashrc

backdir="backup/ver`python setup_scripts/get_counter.py`/"
mkdir -p $backdir
cp ~/.bashrc $backdir/DOTbashrc.OLD
cp ~/.pythonrc $backdir/DOTpythonrc.OLD
cp ~/.inputrc $backdir/DOTinputrc.OLD
cp ~/.vimrc $backdir/DOTvimrc.OLD

#cp conf_files/DOTbashrc ~/.bashrc
cat conf_files/DOTbashrc >>~/.bashrc

#cp conf_files/DOTpythonrc ~/.pythonrc
bash setup_scripts/py_config.sh

#cp conf_files/DOTvimrc ~/.vimrc
bash setup_scripts/vim_config.sh


cp conf_files/DOTinputrc ~/.inputrc
echo "#======================end rpasta42-personal/myconfig" >>~/.bashrc

