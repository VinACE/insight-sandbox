sudo apt-get install zsh
sudo apt-get install git-core
#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sudo sh
# sudo chsh -s /bin/zsh # changes root

sudo curl -L http://install.ohmyz.sh | sh
sudo chsh -s $(which zsh) $(whoami)

echo "check whether your bash is correct"
cat /etc/passwd | grep root
cat /etc/passwd | grep ubuntu

echo "---
You should have root and ubuntu (for ec2 user) set properly
root:x:0:0:root:/root:/bin/zsh
ubuntu:x:1000:1000:Ubuntu,,,:/home/ubuntu:/bin/zsh"

