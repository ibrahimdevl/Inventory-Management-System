CREATE DATABASE IF NOT EXISTS Product;
USE Product;

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
  productId VARCHAR(256) UNIQUE NOT NULL,
  productName VARCHAR(256),
  productDescription VARCHAR(3500),
  productCategory VARCHAR(256),
  units INT
);

DROP TABLE IF EXISTS User;
CREATE TABLE User (
  username VARCHAR(256),
  password VARCHAR(256)
);

-- No default users here; users are seeded via K8s secret-driven init at deploy time.


