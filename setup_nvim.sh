wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mkdir -p ~/.config/nvim/
git clone https://github.com/HEmile/kickstart.nvim.git ~/.config/nvim/
echo 'export PATH="$HOME/nvim-linux64/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc




# Probably unnecessary, in case of glibc version mismatch
# mkdir $HOME/glibc/ && cd $HOME/glibc
# wget http://ftp.gnu.org/gnu/libc/glibc-2.32.tar.gz
# tar -xvzf glibc-2.32.tar.gz
# mkdir build 
# mkdir glibc-2.32-install
# cd build
# ~/glibc/glibc-2.32/configure --prefix=$HOME/glibc/glibc-2.32-install
# make
# make install
