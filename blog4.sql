drop database if exists medical;

create database medical;

use medical;

CREATE TABLE doctors (
  id int not null PRIMARY KEY AUTO_INCREMENT,
  name varchar(20),
  id_hospital integer,
);

CREATE TABLE hospitals (
  id int not null PRIMARY KEY AUTO_INCREMENT,
  name varchar(20)
);

CREATE TABLE patients (
  id int not null PRIMARY KEY AUTO_INCREMENT,
  name varchar(20),
  id_hospital integer,
  id_doctor integer
);

ALTER TABLE doctors ADD FOREIGN KEY (id_hospital) REFERENCES hospitals (id);
ALTER TABLE patients ADD FOREIGN KEY (id_hospital) REFERENCES hospitals (id);
ALTER TABLE patients ADD FOREIGN KEY (id_doctor) REFERENCES doctors (id);


