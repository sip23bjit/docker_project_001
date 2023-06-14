GRANT ALL PRIVILEGES ON *.* TO 'example'@'192.168.20.248' IDENTIFIED BY
'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
use test;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
);

