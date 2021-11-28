-- COMP 720 Database Project --
-- Kyle Kalantzis --
-- Jason Harris --

DROP DATABASE IF EXISTS PNSDatabase;
CREATE DATABASE PNSDatabase;

USE PNSDatabase;

-- Civilian Contractors --
CREATE TABLE Contractors
(
    `id` INT(10) PRIMARY KEY AUTO_INCREMENT,
     Name VARCHAR(200) NOT NULL,
    `phone_number` CHAR(10) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `department` VARCHAR(30) NULL,
    `job_title` VARCHAR(30) NULL,
    `security_clearance` VARCHAR(20) NULL
);

-- Military Personnel -- 
CREATE TABLE Military
(
    `mil_id` INT(10) PRIMARY KEY AUTO_INCREMENT,
     Name VARCHAR(50) NOT NULL,
    `phone_number` CHAR(10) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `department` VARCHAR(30) NULL,
    `job_title` VARCHAR(30) NULL,
    `security_clearance` VARCHAR(20) NULL
);

-- TO-DO Create ETS Table --

INSERT INTO Contractors (Name, phone_number, email, department, job_title, security_clearance)
VALUES
 ('Martainn Stolli', '1478247556', 'mstolli0@reference.com', 'Accounting', 'VP Quality Control', 'Top-Secret'),
 ('Mitchel Orrock', '3009497606', 'morrock1@usgs.gov', 'Human Resources', 'Data Coordiator', 'Secret'),
 ('Milena Elmar', '4433358523', 'melmar2@mail.ru', 'Accounting', 'Research Nurse', 'Secret'),
 ('Marne Gissop', '9885288945', 'mgissop3@networksolutions.com', 'Training', 'Librarian', 'Secret'),
 ('Shaylyn Ranahan', '2867990867', 'sranahan4@freewebs.com', 'Human Resources', 'Health Coach I', 'Secret'),
 ('Alexandrina Shanley', '2502890670', 'ashanley5@amazon.com', 'Marketing', 'Operator', 'Secret'),
 ('Drucie Chace', '6042309833', 'dchace6@comcast.net', 'Support', 'Help Desk Operator', 'Secret'),
 ('Manuel Pates', '3937554301', 'mpates7@example.com', 'Legal', 'Associate Professor', 'Secret'),
 ('Dionis Wreath', '2999259857', 'dwreath8@time.com', 'Sales', 'Legal Assistant','Secret'),
 ('Zola Groombridge', '2273581674', 'zgroombridge9@tripod.com', 'Human Resources', 'Environmental Specialist', 'Secret'),
 ('Evanne Guitel', '9573802377', 'eguitela@nytimes.com', 'Sales', 'Geologist III', 'Secret'),
 ('Cherise Godfray', '8165434234', 'cgodfrayb@wufoo.com', 'Human Resources', 'Environmental Specialist', 'Secret'),
 ('Linnet Dominique', '4963916378', 'ldominiquec@hp.com', 'Support', 'Junior Executive', 'Top-Secret'),
 ('Gunter Ellerey', '1148319492', 'gellereyd@twitter.com', 'Services', 'Executive Secretary', 'Top-Secret'),
 ('Marris Klimowicz', '1115385205', 'mklimowicze@ucla.edu', 'Legal', 'Clinical Specialist', 'Secret'),
 ('Morgen Mouncher', '5966879782', 'mmouncherf@xing.com', 'Services', 'Environmental Tech', 'Secret'),
 ('Arther Dwelly', '9452450815', 'adwellyg@blogspot.com', 'Research and Development', 'Desktop Support Technician', 'Top-Secret'),
 ('Daune Thayre', '3348694075', 'dthayreh@umn.edu', 'Sales', 'Civil Engineer', 'Secret'),
 ('Erwin Kohrs', '7484799258', 'ekohrsi@tiny.cc', 'Engineering', 'Food Chemist', 'Secret'),
 ('Randell Sturm', '1716340132', 'rsturmj@hao123.com', 'Training', 'Budget/Accounting Analyst IV','Top-Secret'),
 ('Tim Delgua', '7485907029', 'tdelguak@flavors.me', 'Sales', 'Legal Assistant', 'Secret'),
 ('Frankie Baselli', '5992480614', 'fbasellil@amazon.co.uk', 'Sales', 'Financial Advisor', 'Secret'),
 ('Rebecca Crispe', '5472660038', 'rcrispem@alibaba.com', 'Human Resources', 'Editor', 'Secret'),
 ('Brnaba Connal', '3967060532', 'bconnaln@accuweather.com', 'Legal', 'Financial Advisor', 'Secret'),
 ('Gill Bicheno', '5702639292', 'gbichenoo@blinklist.com', 'Business Development', 'Nurse Practicioner', 'Secret');

INSERT INTO Military (full_name, phone_number, email, department, job_title, security_clearance)
VALUES
 ('Vina O'' Kelleher', '6547820923', 'vop@csmonitor.com', 'Engineering', 'Analog Circuit Design manager', 'Top-Secret'),
 ('Roseanne Kuhnhardt', '1849032483', 'rkuhnhardtq@discovery.com', 'Research and Development', 'Physical Therapy Assistant', 'Secret'),
 ('Farra Screase', '8859178756', 'fscreaser@yale.edu', 'Support', 'Office Assistant IV', 'Secret'),
 ('Kiri Aberdalgy', '3325637612', 'kaberdalgys@admin.ch', 'Support', 'Teacher', 'Secret'),
 ('Kristi Bordman', '6645514949', 'kbordmant@meetup.com', 'Support', 'Biostatistician I', 'Top-Secret'),
 ('Gideon Borless', '1211303901', 'gborlessu@storify.com', 'Human Resources', 'Clinical Specialist', 'Secret'),
 ('Bobbie Raigatt', '8037499536', 'braigattv@about.com', 'Services', 'Food Chemist', 'Secret'),
 ('Regan Prazer', '1795687061', 'rprazerw@dedecms.com', 'Human Resources', 'Information Systems Manager', 'Top-Secret'),
 ('Margaretta Potteridge', '9188464290', 'mpotteridgex@cocolog-nifty.com', 'Sales', 'Pharmacist', 'Secret'),
 ('Calley Haack', '6865237080', 'chaacky@nps.gov', 'Legal', 'Environmental Tech', 'Top-Secret'),
 ('Cheston Sykes', '8826526203', 'csykesz@jiathis.com', 'Training', 'Clinical Specialist', 'Secret'),
 ('Philip Gorelli', '9507033719', 'pgorelli10@plala.or.jp', 'Services', 'Research Associate', 'Top-Secret'),
 ('Frasier Feilden', '5575849291', 'ffeilden11@wikia.com', 'Sales', 'Marketing Manager', 'Secret'),
 ('Glennie Stanhope', '2138829593', 'gstanhope12@liveinternet.ru', 'Training', 'Health Coach IV', 'Secret'),
 ('Ailbert Emerton', '3446533142', 'aemerton13@sourceforge.net', 'Research and Development', 'Tax Accountant', 'Secret'),
 ('Jesse Snowdon', '5761532556', 'jsnowdon14@tiny.cc', 'Research and Development', 'Internal Auditor', 'Top-Secret'),
 ('Yolane Franscioni', '9471371372', 'yfranscioni15@microsoft.com', 'Engineering', 'Developer II', 'Top-Secret'),
 ('Celie Osmar', '3956166537', 'cosmar16@upenn.edu', 'Research and Development', 'Nurse Practicioner', 'Secret'),
 ('Norean Leafe', '6686964762', 'nleafe17@artisteer.com', 'Marketing', 'Cost Accountant', 'Secret'),
 ('Mark Heads', '7937800927', 'mheads18@scientificamerican.com', 'Sales', 'Legal Assistant', 'Secret'),
 ('Madison De''Vere - Hunt', '3314894103', 'mdevere19@dion.ne.jp', 'Human Resources', 'Staff Accountant II', 'Secret'),
 ('Fitz Gifkins', '9595783493', 'fgifkins1a@symantec.com', 'Services', 'Quality Engineer', 'Top-Secret'),
 ('Leroy Benns', '2412274172', 'lbenns1b@adobe.com', 'Accounting', 'Payment Adjustment Coordinator', 'Secret'),
 ('Patrick How to preserve', '4658736319', 'phow1c@ed.gov', 'Product Management', 'Account Coordinator', 'Secret'),
 ('Dorolisa Fairney', '3211030242', 'dfairney1d@weebly.com', 'Product Management', 'Quality Engineer', 'Top-Secret');
-- SELECT * FROM Contractors;
-- SELECT * FROM Military;
