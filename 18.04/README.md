# 18.04 Notes

Run the install script: 

	sudo ./install.sh

# Secure MySQL

	sudo mysql_secure_install

# Fix root password

Run this in order to fix easy access to localhost: 

	sudo mysql
	
	ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test'


