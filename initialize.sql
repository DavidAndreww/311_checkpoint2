DROP TABLE IF EXISTS usersOrders, usersPayments, usersAddress, usersContact, users;

CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE usersContact(
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  primaryPhone VARCHAR(50),
  secondaryPhone VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id),
  REFERENCES users (id)
);

CREATE TABLE usersAddress(
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  street VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  zip VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id),
  REFERENCES users (id)
);

CREATE TABLE usersPaymentInfo(
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  creditCardCompany VARCHAR(50),
  creditCardNo VARCHAR(50),
  expDate VARCHAR(50),
  authNo VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id),
  REFERENCES users (id)
);
CREATE TABLE usersOrder(
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  itemId VARCHAR(50),
  itemDesc VARCHAR(50),
);