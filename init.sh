sudo yum install git tmux tree -y
sudo yum groupinstall "Development Tools" -y
sudo apt install git build-essential cmake tmux tree -y
sudo git clone https://github.com/alpha19976/vim.git && sudo cd vim && sudo mv .vimrc ~ && sudo mv -f vscode_light.vim /usr/share/vim/vim81/colors/
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
