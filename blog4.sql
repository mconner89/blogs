drop database if exists medical;

create database medical;

use medical;

CREATE TABLE doctors (
  id_doctor int not null PRIMARY KEY AUTO_INCREMENT,
  doctorname varchar(20),
  id_hospital integer
);

CREATE TABLE hospitals (
  id_hospital int not null PRIMARY KEY AUTO_INCREMENT,
  hospitalname varchar(20)
);

CREATE TABLE patients (
  id_patient int not null PRIMARY KEY AUTO_INCREMENT,
  patientname varchar(20),
  id_hospital integer,
  id_doctor integer
);

ALTER TABLE doctors ADD FOREIGN KEY (id_hospital) REFERENCES hospitals (id_hospital);
ALTER TABLE patients ADD FOREIGN KEY (id_hospital) REFERENCES hospitals (id_hospital);
ALTER TABLE patients ADD FOREIGN KEY (id_doctor) REFERENCES doctors (id_doctor);

insert into hospitals (hospitalname) value ('memorial');
insert into hospitals (hospitalname) value ('general');

insert into doctors (doctorname, id_hospital) value ('house', 1);
insert into doctors (doctorname, id_hospital) value ('strange', 2);
insert into doctors (doctorname, id_hospital) value ('zhivago', 2);
insert into doctors (doctorname, id_hospital) value ('doom', 1);

insert into patients (patientname, id_hospital, id_doctor) value ('thorin', 1, 2);
insert into patients (patientname, id_hospital, id_doctor) value ('fili', 2, 3);
insert into patients (patientname, id_hospital, id_doctor) value ('kili', 1, 1);
insert into patients (patientname, id_hospital, id_doctor) value ('oin', 2, 4);
insert into patients (patientname, id_hospital, id_doctor) value ('gloin', 2, 1);
insert into patients (patientname, id_hospital, id_doctor) value ('balin', 1, 3);

-- select patients.name, doctors.name from patients inner join doctors where (patients.id_doctor = doctors.id);

-- select d.name, h.name from doctors d inner join hospitals h on d.id_hospital = h.id_hospital;

-- select p.patientname, d.doctorname, h.hospitalname from patients p inner join doctors d on p.id_doctor = d.id_doctor inner join hospitals h on p.id_hospital = h.id_hospital;
