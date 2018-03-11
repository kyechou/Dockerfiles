create database cloud_net;
create user 'admin'@'%' identified by 'cs436';
grant all privileges on cloud_net.* to 'admin'@'%';
flush privileges;
