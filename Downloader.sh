# !/bin/bash
echo "Welcome to AdmixTools Setup \n"
cd $HOME
sudo pacman -Sy git cmake wget base-devel
git clone "https://github.com/DReichLab/AdmixTools"
cd "$HOME/AdmixTools/src"
make clobber
make all
make install
cd
sudo cp -r $HOME/AdmixTools/bin/. /bin/
echo "Hey! Your computer now have AdmixTools Capabilities. You can use qpAdm and qpWave as much as you like"
