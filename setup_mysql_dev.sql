-- prepares a MySQL server for the HBNB project
-- create project developement database with the name hbnb_dev_db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- creates a new user named hbnb_dev
-- with the password hbnb_dev_pwd if it dosen't exist
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- giving access all privileges to the new user
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
-- giving SELECT privilege for the user hbnb_dev db performance_schema
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
