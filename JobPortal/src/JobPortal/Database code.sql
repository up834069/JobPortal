#Author UP834069#
CREATE DATABASE JobPortal;

CREATE TABLE JobSearch (
JobID int AUTO_INCREMENT not null,
JobTitle varchar (100) not null,
JobType varchar (80) not null,
Location varchar (50) not null,
JobDescription varchar (250) not null,
Sector varchar(60) not null,
CompName varchar(150) not null,
Salary DEC(8,2) not null DEFAULT 0,
ApplyByDate date not null,
PRIMARY KEY (JobID)
);

CREATE TABLE ApplyForJob (
JobID int,
JobApplied ENUM ('Yes' , 'No'),
FOREIGN KEY (JobID) REFERENCES JobSearch(JobID)
);

CREATE TABLE Registration (
RegID int AUTO_INCREMENT not null,
fName varchar (50) not null,
lName varchar (50) not null,
email varchar (200) not null,
Pnumber int (11) not null,
DOB date not null,
PreLocation varchar (50) null,
PreJobRole varchar (100) null,
PreJobType varchar (80) null,
PRIMARY KEY (RegID)
);

