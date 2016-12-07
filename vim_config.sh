#/bin/bash


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#echo 'execute pathogen#infect()' >> ~/.vimrc
cp ~/.vimrc DOTvimrc.old
cp DOTvimrc ~/.vimrc

sudo rm -R /home/kkostya/.vim/bundle/nerdtree/
#git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/rpasta42-personal/nerdtree ~/.vim/bundle/nerdtree

