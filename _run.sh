service mysql start
echo "create database got" | mysql -u root
node build/server/server.js
