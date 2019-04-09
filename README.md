# ubuntu-base-install

Bash script where I try to remember a base install of ubuntu.

Works nicely if you want to setup a LAMP server that is not 

bloated. E.g. after a Vagrant base install of Ubuntu.  

See: [16.04](16.04) or [18.04](18.04)

Includes: 

* Apache2-server
* MySQL-server
* mod-php7.x 
* php7.x-CLI
* common PHP7 modules
* php composer
* vim, wget, rsync, lynx, git, pandoc
* nodejs 7.x or 10.x
* sets default editor to vim
* Adds a /home/user/bin dir to current user.
* Adds above bin dir to path

# Install: 

    git clone https://github.com/diversen/ubuntu-base-install

# Usage: 

    cd ubuntu-base-install/16.04

or 

	cd ubuntu-base-install/18.04

    ./install.sh

License: MIT