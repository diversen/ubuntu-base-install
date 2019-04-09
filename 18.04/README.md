# 18.04 Notes

Run the install script: 

		sudo ./install.sh

# Secure MySQL

		mysql_secure_install

Run this in order to fix easy access to localhost: 

		sudo mysql
	
		ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test'


