-- COMP 720 Database Project --
-- Kyle Kalantzis --
-- Jason Harris --

DROP DATABASE IF EXISTS PNSDatabase;
CREATE DATABASE PNSDatabase;

USE PNSDatabase;

-- Civilian Contractors --
CREATE TABLE Contractors
(
    badge_number CHAR(2) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    department VARCHAR(30) NULL,
    job_title VARCHAR(30) NULL,
    security_clearance VARCHAR(20) NULL
);

-- Military Personnel -- 
CREATE TABLE Military
(
    mil_badge_number CHAR(2) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    department VARCHAR(30) NULL,
    job_title VARCHAR(30) NULL,
    security_clearance VARCHAR(20) NULL
);

INSERT INTO Contractors VALUES
 (1, 'Martainn Stolli', '1478247556', 'mstolli0@reference.com', 'Accounting', 'VP Quality Control', 'Top-Secret'),
 (2, 'Mitchel Orrock', '3009497606', 'morrock1@usgs.gov', 'Human Resources', 'Data Coordiator', 'Secret'),
 (3, 'Milena Elmar', '4433358523', 'melmar2@mail.ru', 'Accounting', 'Research Nurse', 'Secret'),
 (4, 'Marne Gissop', '9885288945', 'mgissop3@networksolutions.com', 'Training', 'Librarian', 'Secret'),
 (5, 'Shaylyn Ranahan', '2867990867', 'sranahan4@freewebs.com', 'Human Resources', 'Health Coach I', 'Secret'),
 (6, 'Alexandrina Shanley', '2502890670', 'ashanley5@amazon.com', 'Marketing', 'Operator', 'Secret'),
 (7, 'Drucie Chace', '6042309833', 'dchace6@comcast.net', 'Support', 'Help Desk Operator', 'Secret'),
 (8, 'Manuel Pates', '3937554301', 'mpates7@example.com', 'Legal', 'Associate Professor', 'Secret'),
 (9, 'Dionis Wreath', '2999259857', 'dwreath8@time.com', 'Sales', 'Legal Assistant','Secret'),
 (10, 'Zola Groombridge', '2273581674', 'zgroombridge9@tripod.com', 'Human Resources', 'Environmental Specialist', 'Secret'),
 (11, 'Evanne Guitel', '9573802377', 'eguitela@nytimes.com', 'Sales', 'Geologist III', 'Secret'),
 (12, 'Cherise Godfray', '8165434234', 'cgodfrayb@wufoo.com', 'Human Resources', 'Environmental Specialist', 'Secret'),
 (13, 'Linnet Dominique', '4963916378', 'ldominiquec@hp.com', 'Support', 'Junior Executive', 'Top-Secret'),
 (14, 'Gunter Ellerey', '1148319492', 'gellereyd@twitter.com', 'Services', 'Executive Secretary', 'Top-Secret'),
 (15, 'Marris Klimowicz', '1115385205', 'mklimowicze@ucla.edu', 'Legal', 'Clinical Specialist', 'Secret'),
 (16, 'Morgen Mouncher', '5966879782', 'mmouncherf@xing.com', 'Services', 'Environmental Tech', 'Secret'),
 (17, 'Arther Dwelly', '9452450815', 'adwellyg@blogspot.com', 'Research and Development', 'Desktop Support Technician', 'Top-Secret'),
 (18, 'Daune Thayre', '3348694075', 'dthayreh@umn.edu', 'Sales', 'Civil Engineer', 'Secret'),
 (19, 'Erwin Kohrs', '7484799258', 'ekohrsi@tiny.cc', 'Engineering', 'Food Chemist', 'Secret'),
 (20, 'Randell Sturm', '1716340132', 'rsturmj@hao123.com', 'Training', 'Budget/Accounting Analyst IV','Top-Secret'),
 (21, 'Tim Delgua', '7485907029', 'tdelguak@flavors.me', 'Sales', 'Legal Assistant', 'Secret'),
 (22, 'Frankie Baselli', '5992480614', 'fbasellil@amazon.co.uk', 'Sales', 'Financial Advisor', 'Secret'),
 (23, 'Rebecca Crispe', '5472660038', 'rcrispem@alibaba.com', 'Human Resources', 'Editor', 'Secret'),
 (24, 'Brnaba Connal', '3967060532', 'bconnaln@accuweather.com', 'Legal', 'Financial Advisor', 'Secret'),
 (25, 'Gill Bicheno', '5702639292', 'gbichenoo@blinklist.com', 'Business Development', 'Nurse Practicioner', 'Secret');

INSERT INTO Military VALUES
 (1, 'Vina O'' Kelleher', '6547820923', 'vop@csmonitor.com', 'Engineering', 'Analog Circuit Design manager', 'Top-Secret'),
 (2, 'Roseanne Kuhnhardt', '1849032483', 'rkuhnhardtq@discovery.com', 'Research and Development', 'Physical Therapy Assistant', 'Secret'),
 (3, 'Farra Screase', '8859178756', 'fscreaser@yale.edu', 'Support', 'Office Assistant IV', 'Secret'),
 (4, 'Kiri Aberdalgy', '3325637612', 'kaberdalgys@admin.ch', 'Support', 'Teacher', 'Secret'),
 (5, 'Kristi Bordman', '6645514949', 'kbordmant@meetup.com', 'Support', 'Biostatistician I', 'Top-Secret'),
 (6, 'Gideon Borless', '1211303901', 'gborlessu@storify.com', 'Human Resources', 'Clinical Specialist', 'Secret'),
 (7, 'Bobbie Raigatt', '8037499536', 'braigattv@about.com', 'Services', 'Food Chemist', 'Secret'),
 (8, 'Regan Prazer', '1795687061', 'rprazerw@dedecms.com', 'Human Resources', 'Information Systems Manager', 'Top-Secret'),
 (9, 'Margaretta Potteridge', '9188464290', 'mpotteridgex@cocolog-nifty.com', 'Sales', 'Pharmacist', 'Secret'),
 (10, 'Calley Haack', '6865237080', 'chaacky@nps.gov', 'Legal', 'Environmental Tech', 'Top-Secret'),
 (11, 'Cheston Sykes', '8826526203', 'csykesz@jiathis.com', 'Training', 'Clinical Specialist', 'Secret'),
 (12, 'Philip Gorelli', '9507033719', 'pgorelli10@plala.or.jp', 'Services', 'Research Associate', 'Top-Secret'),
 (13, 'Frasier Feilden', '5575849291', 'ffeilden11@wikia.com', 'Sales', 'Marketing Manager', 'Secret'),
 (14, 'Glennie Stanhope', '2138829593', 'gstanhope12@liveinternet.ru', 'Training', 'Health Coach IV', 'Secret'),
 (15, 'Ailbert Emerton', '3446533142', 'aemerton13@sourceforge.net', 'Research and Development', 'Tax Accountant', 'Secret'),
 (16, 'Jesse Snowdon', '5761532556', 'jsnowdon14@tiny.cc', 'Research and Development', 'Internal Auditor', 'Top-Secret'),
 (17, 'Yolane Franscioni', '9471371372', 'yfranscioni15@microsoft.com', 'Engineering', 'Developer II', 'Top-Secret'),
 (18, 'Celie Osmar', '3956166537', 'cosmar16@upenn.edu', 'Research and Development', 'Nurse Practicioner', 'Secret'),
 (19, 'Norean Leafe', '6686964762', 'nleafe17@artisteer.com', 'Marketing', 'Cost Accountant', 'Secret'),
 (20, 'Mark Heads', '7937800927', 'mheads18@scientificamerican.com', 'Sales', 'Legal Assistant', 'Secret'),
 (21, 'Madison De''Vere - Hunt', '3314894103', 'mdevere19@dion.ne.jp', 'Human Resources', 'Staff Accountant II', 'Secret'),
 (22, 'Fitz Gifkins', '9595783493', 'fgifkins1a@symantec.com', 'Services', 'Quality Engineer', 'Top-Secret'),
 (23, 'Leroy Benns', '2412274172', 'lbenns1b@adobe.com', 'Accounting', 'Payment Adjustment Coordinator', 'Secret'),
 (24, 'Patrick How to preserve', '4658736319', 'phow1c@ed.gov', 'Product Management', 'Account Coordinator', 'Secret'),
 (25, 'Dorolisa Fairney', '3211030242', 'dfairney1d@weebly.com', 'Product Management', 'Quality Engineer', 'Top-Secret');
SELECT * FROM Contractors;
SELECT * FROM Military;