#!/bin/sh

mkdir -p bin
echo 'PATH=$PATH:~/bin' >> .bashrc

# My base debian
install_base() {
sudo apt-get install aptitude
sudo aptitude install \
vim \
apache2 \
mysql-server \
libapache2-mod-php7.0 \
php7.0-cli \
php7.0-curl \
php7.0-mbstring \
php7.0-pdo \
php7.0-mysql \
php7.0-mcrypt \
php7.0-zip \
php7.0-xml \
php7.0-sqlite3 \
php7.0-gd \
sqlite3 \
wget \
curl \
lynx \
pandoc \
rsync \
git \
build-essential
}

# Nodejs
install_nodejs(){
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
}

# Composer
install_composer(){
wget https://getcomposer.org/composer.phar
chmod +x composer.phar
sudo cp composer.phar /usr/local/bin/composer
rm composer.phar
}

git_setup(){
git config --global user.email "dennis.iversen@gmail.com"
git config --global user.name "Dennis Iversen"
git config --global push.default matching
git config --global credential.helper "cache --timeout=3600"
}



# Base setup
install_base

git_setup

# Nodejs
if (which nodejs); then
	echo "Nodejs exists. Skipping install";
else
	install_nodejs
fi

# Composer
if (which composer); then
	echo "php Composer exists. Skipping install";
else
	install_composer
fi



# Build

FILE=/usr/local/bin/composer

if [ -f $FILE ];
then
   echo "Composer exists."
else
   echo "Installing composer"

fi

sudo a2enmod rewrite
sudo service apache2 restart
