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

INSERT INTO User(username, password) VALUES
("airbus01","$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6"),
("airbus02","$2a$10$ZnnAdfh3cc7a/b1aODLeoOjifNPbHL6Vo8kpRJj.muPsVp1697hJO");


