CREATE DATABASE dufunahelp;

  USE dufunahelp;

  CREATE TABLE products (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    itemname VARCHAR(30) NOT NULL,
    quantity INT(3),
    date TIMESTAMP
  );