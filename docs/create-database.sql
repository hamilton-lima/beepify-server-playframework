CREATE USER 'beepify_user'@'%' IDENTIFIED BY 'uTzt4wcAngvZRTF#';
CREATE USER 'beepify_user'@'localhost' IDENTIFIED BY 'uTzt4wcAngvZRTF#';

CREATE SCHEMA beepify DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON beepify.* TO 'beepify_user'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON beepify.* TO 'beepify_user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
