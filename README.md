# ubuntu--base-install

Bash script where I try to remember my base install of ubuntu.

Works nicely if you want to setup a LAMP server that is not 

bloated. E.g. after a Vagrant install of Ubuntu.  

See: [16.04](16.04) or [18.04](18.04)

Includes: 

* Apache2-server
* MySQL-server
* mod-php7.x 
* php7.x-cli
* common php modules
* wget, rsync, lynx
* nodejs 7.x or 10.x


Install: 

    git clone https://github.com/diversen/ubuntu-base-install

Usage: 

    cd ubuntu-base-install/16.04

or 

		cd ubuntu-base-install/18.04

    ./install.sh


