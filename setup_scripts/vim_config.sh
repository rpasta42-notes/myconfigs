#/bin/bash


rm -rf ~/.vim/autoload
rm -rf ~/.vim/bundle/nerdtree/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/rpasta42-personal/nerdtree ~/.vim/bundle/nerdtree


#echo 'execute pathogen#infect()' >> ~/.vimrc
##cp ~/.vimrc DOTvimrc.old
cp conf_files/DOTvimrc ~/.vimrc

