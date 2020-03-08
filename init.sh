sudo yum install git tmux tree -y
syudo yum groupinstall "Development Tools" -y
sudo apt install git build-essential cmake tmux tree -y
sudo git clone https://github.com/alpha19976/vim.git && cd vim && mv .vimrc ~ && mv -f vscode_light.vim /usr/share/vim/vim81/colors/
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
