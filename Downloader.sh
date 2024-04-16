# !/bin/bash
echo "Welcome to AdmixTools Setup \n"
cd $HOME
sudo pacman -Sy git cmake wget base-devel
git clone "https://github.com/DReichLab/AdmixTools"
cd "$HOME/AdmixTools/src"
make clobber
make install

