CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20)
);

CREATE TABLE coalition (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20)
);

CREATE TABLE user (
  username VARCHAR(20) PRIMARY KEY,
  password_hash VARCHAR(20),
  mail VARCHAR(20),
  role_id INT,
  coalition_id INT,
  FOREIGN KEY role_id REFERENCES role.id,
  FOREIGN KEY coalition_id REFERENCE coalition.id
);

CREATE TABLE project_type (
  id INT PRIMARY KEY AUTO_INCREMENT,
  type VARCHAR(20)
);

CREATE TABLE project (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30),
  description VARCHAR(250),
  photo_url VARCHAR(250),
  website_url VARCHAR(250),
  year INT,
  type_id INT,
  ghg_reduced FLOAT,
  gge_reduced FLOAT,
  address VARCHAR(30),
  city VARCHAR(30),
  state VARCHAR(2),
  zip INT,
  area_of_effect POLYGON,
  FOREIGN KEY type_id REFERENCES project_type.id
);