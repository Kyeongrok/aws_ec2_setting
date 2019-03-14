# git
sudo yum install git -y

#git credential설정
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true

# zsh
sudo yum install zsh -y
sudo yum install util-linux-user -y
sudo chsh -s $(which zsh) ec2-user

# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# docker
sudo yum install -y docker
sudo service docker start
sudo usermod -aG docker $USER

# maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven

# java8
sudo yum install -y java-1.8.0-openjdk-devel.x86_64


# nginx
sudo amazon-linux-extras install nginx1.12 -y

# python
sudo yum install python3 -y
sudo pip3 install boto3

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | zsh
. ~/.nvm/nvm.sh
nvm install lts/carbon
