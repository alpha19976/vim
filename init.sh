yum install git tmux tree -y
yum groupinstall "Development Tools" -y
apt install git build-essential cmake tmux tree -y
git clone https://github.com/alpha19976/vim.git && cd vim && mv .vimrc ~ && mv -f vscode_light.vim /usr/share/vim/vim74/colors/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
