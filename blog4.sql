drop database if exists medical;

create database medical;

use medical;

CREATE TABLE doctors (
  id int not null PRIMARY KEY AUTO_INCREMENT,
  name varchar(20),
  id_hospital integer
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

insert into hospitals (name) value ('memorial');
insert into hospitals (name) value ('general');

insert into doctors (name, id_hospital) value ('house', 1);
insert into doctors (name, id_hospital) value ('strange', 2);
insert into doctors (name, id_hospital) value ('zhivago', 2);
insert into doctors (name, id_hospital) value ('doom', 1);

insert into patients (name, id_hospital, id_doctor) value ('thorin', 1, 2);
insert into patients (name, id_hospital, id_doctor) value ('fili', 2, 3);
insert into patients (name, id_hospital, id_doctor) value ('kili', 1, 1);
insert into patients (name, id_hospital, id_doctor) value ('oin', 2, 4);
insert into patients (name, id_hospital, id_doctor) value ('gloin', 2, 1);
insert into patients (name, id_hospital, id_doctor) value ('balin', 1, 3);


