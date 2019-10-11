#!/bin/sh

# TODO: Create database and initialize database table structure

BEGIN;

SET client_encoding = 'LATIN1';

Create table Employee (
    ssn varchar(15) Primary key,
    First varchar(50),
    Last varchar(50),
    birth_year int ,
    city varchar(20)
);

create table Job (
ssn_id varchar(15),
Company varchar(20),
Salary int,
Experience int,
Foreign Key (ssn_id) references employee(ssn)
);
# TODO: Insert data into tables

COPY Employee(ssn,First,Last,birth_year,city) FROM '/Users/david/IdeaProjects/GA/hw/sql-intro-lab/databases/sql-joins-lab/starter-code/employees.csv' DELIMITER ',' CSV HEADER;
COPY JOB(ssn_id,company,Salaray,experience) FROM '/Users/david/IdeaProjects/GA/hw/sql-intro-lab/databases/sql-joins-lab/starter-code/jobs.csv' DELIMITER ',' CSV HEADER;