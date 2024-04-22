# !/bin/bash
echo "Welcome to AdmixTools Setup \n"
cd $HOME
sudo pacman -Sy git cmake wget base-devel lgsl openblas
git clone "https://github.com/DReichLab/AdmixTools"
cd "$HOME/AdmixTools/src"
make clobber
make all
make install
sudo cp -r $HOME/AdmixTools/bin/. /bin/
cd $HOME/AdmixTools-For-Everyone
wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20231211.zip
mkdir plink
unzip plink1-assets/plink_linux_x86_64_20231211.zip -d plink && cd plink
sudo cp plink prettify /bin/
cd ..



echo "Hey! Your computer now have AdmixTools Capabilities. You can use qpAdm and qpWave as much as you like"
