-- job 테이블 생성
CREATE table if not exists job (
job_code CHAR(8) PRIMARY KEY,
job_name VARCHAR(255) NOT NULL
);
-- person 테이블 생성
CREATE table if not exists person (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
gender CHAR(1) CHECK (gender IN ('M', 'F')),
birthday DATE NOT NULL,
job_code CHAR(8) REFERENCES job(job_code)
);
-- job 테이블에 추가 직업 데이터 삽입
INSERT INTO job (job_code, job_name) VALUES
('J0000001', 'Comedian'),
('J0000002', 'Singer'),
('J0000003', 'Actor'),
('J0000004', 'TV Host'),
('J0000005', 'Athlete'),
('J0000006', 'Director'),
('J0000007', 'Producer'),
('J0000008', 'Photographer'),
('J0000009', 'Graphic Designer'),
('J0000010', 'Software Engineer'),
('J0000011', 'Data Scientist'),
('J0000012', 'Doctor'),
('J0000013', 'Nurse'),
('J0000014', 'Teacher'),
('J0000015', 'Professor'),
('J0000016', 'Lawyer'),
('J0000017', 'Journalist'),
('J0000018', 'Writer'),
('J0000019', 'Pilot'),
('J0000020', 'Chef'),
('J0000021', 'Architect'),
('J0000022', 'Civil Engineer'),
('J0000023', 'Mechanical Engineer'),
('J0000024', 'Electrical Engineer'),
('J0000025', 'Biologist'),
('J0000026', 'Chemist'),
('J0000027', 'Physicist'),
('J0000028', 'Mathematician'),
('J0000029', 'Economist'),
('J0000030', 'Financial Analyst'),
('J0000031', 'Accountant'),
('J0000032', 'Marketing Specialist'),
('J0000033', 'Sales Manager'),
('J0000034', 'HR Manager'),
('J0000035', 'Project Manager'),
('J0000036', 'Entrepreneur');

-- person 테이블에 mock 데이터 추가 삽입
INSERT INTO person (name, gender, birthday, job_code) VALUES
('IU', 'F', '1993-05-16', 'J0000002'),
('Lee Kwang-soo', 'M', '1985-07-14', 'J0000003'),
('Steve Jobs', 'M', '1955-02-24', 'J0000004'),
('Elon Musk', 'M', '1971-06-28', 'J0000004'),
('Taylor Swift', 'F', '1989-12-13', 'J0000002'),
('Cristiano Ronaldo', 'M', '1985-02-05', 'J0000005'),
('Jennifer Lawrence', 'F', '1990-08-15', 'J0000003'),
('Morgan Freeman', 'M', '1937-06-01', 'J0000003'),
('Will Smith', 'M', '1968-09-25', 'J0000003'),
('Emma Watson', 'F', '1990-04-15', 'J0000003'),
('Lionel Messi', 'M', '1987-06-24', 'J0000005'),
('Serena Williams', 'F', '1981-09-26', 'J0000005'),
('David Beckham', 'M', '1975-05-02', 'J0000005'),
('Rihanna', 'F', '1988-02-20', 'J0000002'),
('Rihanna', 'F', '1988-02-20', 'J0000003'),
('Brad Pitt', 'M', '1963-12-18', 'J0000003'),
('Angelina Jolie', 'F', '1975-06-04', 'J0000003'),
('Keanu Reeves', 'M', '1964-09-02', 'J0000003'),
('Michael Jordan', 'M', '1963-02-17', 'J0000005'),
('LeBron James', 'M', '1984-12-30', 'J0000005'),
('Kanye West', 'M', '1977-06-08', 'J0000002'),
('Kim Kardashian', 'F', '1980-10-21', 'J0000004'),
('Tom Hanks', 'M', '1956-07-09', 'J0000003'),
('Scarlett Johansson', 'F', '1984-11-22', 'J0000003'),
('Robert Downey Jr.', 'M', '1965-04-04', 'J0000003'),
('Chris Hemsworth', 'M', '1983-08-11', 'J0000003'),
('Dwayne Johnson', 'M', '1972-05-02', 'J0000003'),
('Gal Gadot', 'F', '1985-04-30', 'J0000003'),
('Bill Gates', 'M', '1955-10-28', 'J0000004'),
('Mark Zuckerberg', 'M', '1984-05-14', 'J0000004'),
('Shakira', 'F', '1977-02-02', 'J0000002'),
('Christopher Nolan', 'M', '1970-07-30', 'J0000006'),
('Quentin Tarantino', 'M', '1963-03-27', 'J0000006'),
('Hans Zimmer', 'M', '1957-09-12', 'J0000007'),
('Annie Leibovitz', 'F', '1949-10-02', 'J0000008'),
('Steve McCurry', 'M', '1950-04-23', 'J0000008'),
('Tim Berners-Lee', 'M', '1955-06-08', 'J0000010'),
('Grace Hopper', 'F', '1906-12-09', 'J0000010'),
('Marie Curie', 'F', '1867-11-07', 'J0000026'),
('Albert Einstein', 'M', '1879-03-14', 'J0000027'),
('Isaac Newton', 'M', '1643-01-04', 'J0000027'),
('Ada Lovelace', 'F', '1815-12-10', 'J0000028'),
('Amelia Earhart', 'F', '1897-07-24', 'J0000019'),
('Gordon Ramsay', 'M', '1966-11-08', 'J0000020'),
('Zaha Hadid', 'F', '1950-10-31', 'J0000021'),
('Leonardo da Vinci', 'M', '1452-04-15', 'J0000021'),
('Rosalind Franklin', 'F', '1920-07-25', 'J0000025'),
('Jane Austen', 'F', '1775-12-16', 'J0000018'),
('Ernest Hemingway', 'M', '1899-07-21', 'J0000018'),
('William Shakespeare', 'M', '1564-04-23', 'J0000018'),
('Virginia Woolf', 'F', '1882-01-25', 'J0000018');
('David Bowie', 'M', '1947-01-08', 'J0000002'), -- Singer
('David Bowie', 'M', '1947-01-08', 'J0000003'), -- Actor
('Donald Glover', 'M', '1983-09-25', 'J0000002'), -- Singer
('Donald Glover', 'M', '1983-09-25', 'J0000003'), -- Actor
('Oprah Winfrey', 'F', '1954-01-29', 'J0000004'), -- TV Host
('Oprah Winfrey', 'F', '1954-01-29', 'J0000016'), -- Lawyer
('Emma Thompson', 'F', '1959-04-15', 'J0000003'), -- Actor
('Emma Thompson', 'F', '1959-04-15', 'J0000018'), -- Writer
('Jared Leto', 'M', '1971-12-26', 'J0000002'), -- Singer
('Jared Leto', 'M', '1971-12-26', 'J0000003'), -- Actor
('Elon Musk', 'M', '1971-06-28', 'J0000004'), -- TV Host
('Elon Musk', 'M', '1971-06-28', 'J0000036'), -- Entrepreneur
('Steve Martin', 'M', '1945-08-14', 'J0000001'), -- Comedian
('Steve Martin', 'M', '1945-08-14', 'J0000018'), -- Writer
('Hugh Laurie', 'M', '1959-06-11', 'J0000003'), -- Actor
('Hugh Laurie', 'M', '1959-06-11', 'J0000001'), -- Comedian
('Mindy Kaling', 'F', '1979-06-24', 'J0000018'), -- Writer
('Mindy Kaling', 'F', '1979-06-24', 'J0000003'), -- Actor
('Lin-Manuel Miranda', 'M', '1980-01-16', 'J0000002'), -- Singer
('Lin-Manuel Miranda', 'M', '1980-01-16', 'J0000018'), -- Writer
('Neil deGrasse Tyson', 'M', '1958-10-05', 'J0000025'), -- Biologist
('Neil deGrasse Tyson', 'M', '1958-10-05', 'J0000027'), -- Physicist
('Natalie Portman', 'F', '1981-06-09', 'J0000003'), -- Actor
('Natalie Portman', 'F', '1981-06-09', 'J0000015'); -- Professor

-- 한 사람이 두 개의 직업을 가지는 경우
INSERT INTO person (name, gender, birthday, job_code) VALUES
('Leonardo da Vinci', 'M', '1452-04-15', 'J0000008'), -- Leonardo da Vinci, already an Architect, also a Photographer
('Albert Einstein', 'M', '1879-03-14', 'J0000028'); -- Albert Einstein, already a Physicist, also a Mathematician

-- 직업이 없는 경우
INSERT INTO person (name, gender, birthday, job_code) VALUES
('Anonymous', 'F', '1990-01-01', NULL),
('John Doe', 'M', '1980-05-15', NULL);

-- person 테이블에 중복되는 mock 데이터 추가 삽입
INSERT INTO person (name, gender, birthday, job_code) VALUES
('IU', 'F', '1993-05-16', 'J0000002'),
('Lee Kwang-soo', 'M', '1985-07-14', 'J0000003'),
('Steve Jobs', 'M', '1955-02-24', 'J0000004'),
('Elon Musk', 'M', '1971-06-28', 'J0000004'),
('Taylor Swift', 'F', '1989-12-13', 'J0000002'),
('Cristiano Ronaldo', 'M', '1985-02-05', 'J0000005'),
('Jennifer Lawrence', 'F', '1990-08-15', 'J0000003'),
('Morgan Freeman', 'M', '1937-06-01', 'J0000003'),
('Will Smith', 'M', '1968-09-25', 'J0000003'),
('Emma Watson', 'F', '1990-04-15', 'J0000003'),
('Lionel Messi', 'M', '1987-06-24', 'J0000005'),
('Serena Williams', 'F', '1981-09-26', 'J0000005'),
('David Beckham', 'M', '1975-05-02', 'J0000005'),
('Rihanna', 'F', '1988-02-20', 'J0000002'),
('Rihanna', 'F', '1988-02-20', 'J0000003'),
('Brad Pitt', 'M', '1963-12-18', 'J0000003'),
('Angelina Jolie', 'F', '1975-06-04', 'J0000003'),
('Keanu Reeves', 'M', '1964-09-02', 'J0000003'),
('Michael Jordan', 'M', '1963-02-17', 'J0000005'),
('LeBron James', 'M', '1984-12-30', 'J0000005'),
('Kanye West', 'M', '1977-06-08', 'J0000002'),
('Kim Kardashian', 'F', '1980-10-21', 'J0000004'),
('Tom Hanks', 'M', '1956-07-09', 'J0000003'),
('Scarlett Johansson', 'F', '1984-11-22', 'J0000003'),
('Robert Downey Jr.', 'M', '1965-04-04', 'J0000003'),
('Chris Hemsworth', 'M', '1983-08-11', 'J0000003'),
('Dwayne Johnson', 'M', '1972-05-02', 'J0000003'),
('Gal Gadot', 'F', '1985-04-30', 'J0000003'),
('Bill Gates', 'M', '1955-10-28', 'J0000004'),
('Mark Zuckerberg', 'M', '1984-05-14', 'J0000004'),
('Shakira', 'F', '1977-02-02', 'J0000002'),
('Christopher Nolan', 'M', '1970-07-30', 'J0000006'),
('Quentin Tarantino', 'M', '1963-03-27', 'J0000006'),
('Hans Zimmer', 'M', '1957-09-12', 'J0000007'),
('Annie Leibovitz', 'F', '1949-10-02', 'J0000008'),
('Steve McCurry', 'M', '1950-04-23', 'J0000008'),
('Tim Berners-Lee', 'M', '1955-06-08', 'J0000010'),
('Grace Hopper', 'F', '1906-12-09', 'J0000010'),
('Marie Curie', 'F', '1867-11-07', 'J0000026'),
('Albert Einstein', 'M', '1879-03-14', 'J0000027'),
('Isaac Newton', 'M', '1643-01-04', 'J0000027'),
('Ada Lovelace', 'F', '1815-12-10', 'J0000028'),
('Amelia Earhart', 'F', '1897-07-24', 'J0000019'),
('Gordon Ramsay', 'M', '1966-11-08', 'J0000020'),
('Zaha Hadid', 'F', '1950-10-31', 'J0000021'),
('Leonardo da Vinci', 'M', '1452-04-15', 'J0000021'),
('Rosalind Franklin', 'F', '1920-07-25', 'J0000025'),
('Jane Austen', 'F', '1775-12-16', 'J0000018'),
('Ernest Hemingway', 'M', '1899-07-21', 'J0000018'),
('William Shakespeare', 'M', '1564-04-23', 'J0000018'),
('Virginia Woolf', 'F', '1882-01-25', 'J0000018');
('David Bowie', 'M', '1947-01-08', 'J0000002'), -- Singer
('David Bowie', 'M', '1947-01-08', 'J0000003'), -- Actor
('Donald Glover', 'M', '1983-09-25', 'J0000002'), -- Singer
('Donald Glover', 'M', '1983-09-25', 'J0000003'), -- Actor
('Oprah Winfrey', 'F', '1954-01-29', 'J0000004'), -- TV Host
('Oprah Winfrey', 'F', '1954-01-29', 'J0000016'), -- Lawyer
('Emma Thompson', 'F', '1959-04-15', 'J0000003'), -- Actor
('Emma Thompson', 'F', '1959-04-15', 'J0000018'), -- Writer
('Jared Leto', 'M', '1971-12-26', 'J0000002'), -- Singer
('Jared Leto', 'M', '1971-12-26', 'J0000003'), -- Actor
('Elon Musk', 'M', '1971-06-28', 'J0000004'), -- TV Host
('Elon Musk', 'M', '1971-06-28', 'J0000036'), -- Entrepreneur
('Steve Martin', 'M', '1945-08-14', 'J0000001'), -- Comedian
('Steve Martin', 'M', '1945-08-14', 'J0000018'), -- Writer
('Hugh Laurie', 'M', '1959-06-11', 'J0000003'), -- Actor
('Hugh Laurie', 'M', '1959-06-11', 'J0000001'), -- Comedian
('Mindy Kaling', 'F', '1979-06-24', 'J0000018'), -- Writer
('Mindy Kaling', 'F', '1979-06-24', 'J0000003'), -- Actor
('Lin-Manuel Miranda', 'M', '1980-01-16', 'J0000002'), -- Singer
('Lin-Manuel Miranda', 'M', '1980-01-16', 'J0000018'), -- Writer
('Neil deGrasse Tyson', 'M', '1958-10-05', 'J0000025'), -- Biologist
('Neil deGrasse Tyson', 'M', '1958-10-05', 'J0000027'), -- Physicist
('Natalie Portman', 'F', '1981-06-09', 'J0000003'), -- Actor
('Natalie Portman', 'F', '1981-06-09', 'J0000015'); -- Professor




-- band 테이블

-- Test table
/*
CREATE TABLE IF NOT EXISTS test (
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	code VARCHAR NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
*/
CREATE TABLE IF NOT EXISTS test (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- join practice
create schema if not exists practice;
/*
create table if not exists practice.join_sample_1 (
    col1 int,
    col2 varchar,
    col3 varchar
);
create table if not exists practice.join_sample_2 (
   col1 int,
   col4 varchar
);
*/
CREATE TABLE IF NOT EXISTS join_sample_1 (
    col1 INT,
    col2 VARCHAR(255),
    col3 VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS join_sample_2 (
    col1 INT,
    col4 VARCHAR(255)
);


insert into join_sample_1 values
(1, 'A', 'D'),
(3, 'B', 'E'),
(5, 'C', 'F');

insert into join_sample_2 values
(2, 'G'),
(3, 'H'),
(3, 'I');



-- Band table
/*
CREATE TABLE IF NOT EXISTS band (
    band_code VARCHAR PRIMARY KEY,
    band_name VARCHAR NOT NULL
);
*/
CREATE TABLE IF NOT EXISTS band (
    band_code VARCHAR(255) PRIMARY KEY,
    band_name VARCHAR(255) NOT NULL
);



-- Band role table with unique role_name
/*
CREATE TABLE IF NOT EXISTS band_role (
	code VARCHAR PRIMARY KEY,
	role_name VARCHAR NOT NULL UNIQUE, -- role_name must be unique
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
*/
CREATE TABLE IF NOT EXISTS band_role (
    code VARCHAR(255) PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL UNIQUE, -- role_name must be unique
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Band member table with unique name within the same band_code
/*
CREATE TABLE IF NOT EXISTS band_member (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR NOT NULL,
    age INT NOT NULL CHECK (age >= 0),
    band_code VARCHAR,
    member_role_code VARCHAR, -- References the VARCHAR code from band_role
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT band_member_band_code_fk FOREIGN KEY (band_code)
        REFERENCES band (band_code)
        ON DELETE CASCADE,
    CONSTRAINT band_member_member_role_code_fk FOREIGN KEY (member_role_code)
        REFERENCES band_role (code) -- References VARCHAR code
        ON DELETE CASCADE,
    CONSTRAINT band_member_name_unique UNIQUE ("name", band_code) -- name must be unique within the same band_code
);
*/

CREATE TABLE IF NOT EXISTS band_member (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    age INT NOT NULL CHECK (age >= 0),
    band_code VARCHAR(255),
    member_role_code VARCHAR(255), -- References the VARCHAR code from band_role
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT band_member_band_code_fk FOREIGN KEY (band_code)
        REFERENCES band (band_code)
        ON DELETE CASCADE,
    CONSTRAINT band_member_member_role_code_fk FOREIGN KEY (member_role_code)
        REFERENCES band_role (code) -- References VARCHAR code
        ON DELETE CASCADE,
    CONSTRAINT band_member_name_unique UNIQUE (`name`, band_code) -- name must be unique within the same band_code
);

-- Store table
/*
CREATE TABLE IF NOT EXISTS store (
   ticket_id SERIAL PRIMARY KEY,
   performance_name VARCHAR NOT NULL,
   performance_date TIMESTAMP NOT NULL,
   band_code VARCHAR,
   CONSTRAINT store_band_code_fk FOREIGN KEY (band_code)
       REFERENCES band (band_code)
       ON DELETE CASCADE
);
*/
CREATE TABLE IF NOT EXISTS store (
    ticket_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    performance_name VARCHAR(255) NOT NULL,
    performance_date TIMESTAMP NOT NULL,
    band_code VARCHAR(255),
    CONSTRAINT store_band_code_fk FOREIGN KEY (band_code)
        REFERENCES band (band_code)
        ON DELETE CASCADE
);

-- Audience table
/*
CREATE TABLE IF NOT EXISTS audience (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR,
    ticket_id INTEGER,
    CONSTRAINT audience_ticket_id_fk FOREIGN KEY (ticket_id)
        REFERENCES store (ticket_id)
        ON DELETE CASCADE
);
*/
CREATE TABLE IF NOT EXISTS audience (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(255),
    ticket_id BIGINT UNSIGNED,
    CONSTRAINT audience_ticket_id_fk FOREIGN KEY (ticket_id)
        REFERENCES store (ticket_id)
        ON DELETE CASCADE
);


-- Audience review table with ticket_id
/*
CREATE TABLE IF NOT EXISTS audience_review (
    id SERIAL PRIMARY KEY,
    audience_id INTEGER,
    ticket_id INTEGER,  -- 어떤 공연에 대한 리뷰인지 나타내는 컬럼
    review TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT audience_review_audience_id_fk FOREIGN KEY (audience_id)
        REFERENCES audience (id)
        ON DELETE CASCADE,
    CONSTRAINT audience_review_ticket_id_fk FOREIGN KEY (ticket_id)
        REFERENCES store (ticket_id)
        ON DELETE CASCADE
);
*/
CREATE TABLE IF NOT EXISTS audience_review (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    audience_id BIGINT UNSIGNED,
    ticket_id BIGINT UNSIGNED,  -- 어떤 공연에 대한 리뷰인지 나타내는 컬럼
    review TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT audience_review_audience_id_fk FOREIGN KEY (audience_id)
        REFERENCES audience (id)
        ON DELETE CASCADE,
    CONSTRAINT audience_review_ticket_id_fk FOREIGN KEY (ticket_id)
        REFERENCES store (ticket_id)
        ON DELETE CASCADE
); 



-- Band role data
INSERT INTO band_role (code, role_name)
VALUES
('VOC', 'Vocalist'),
('GTR', 'Guitarist'),
('DRM', 'Drummer'),
('BSS', 'Bassist'),
('KBD', 'Keyboardist'),
('PER', 'Percussionist'),
('BKV', 'Backup Vocalist');

-- Band data
INSERT INTO band (band_code, band_name)
VALUES
('B001', 'The Rolling Stones'),
('B002', 'The Beatles'),
('B003', 'Led Zeppelin'),
('B004', 'Pink Floyd'),
('B005', 'Queen'),
('B006', 'The Who'),
('B007', 'Nirvana'),
('B008', 'Metallica'),
('B009', 'AC/DC'),
('B010', 'Red Hot Chili Peppers');

-- Band member data (50 members across 10 bands)
INSERT INTO band_member (name, age, band_code, member_role_code)
VALUES
-- The Rolling Stones
('Mick Jagger', 77, 'B001', 'VOC'),
('Keith Richards', 77, 'B001', 'GTR'),
('Charlie Watts', 80, 'B001', 'DRM'),
('Ronnie Wood', 74, 'B001', 'GTR'),
('Darryl Jones', 65, 'B001', 'BSS'),
-- The Beatles
('Paul McCartney', 78, 'B002', 'VOC'),
('John Lennon', 80, 'B002', 'GTR'),
('George Harrison', 79, 'B002', 'GTR'),
('Ringo Starr', 81, 'B002', 'DRM'),
-- Led Zeppelin
('Robert Plant', 72, 'B003', 'VOC'),
('Jimmy Page', 77, 'B003', 'GTR'),
('John Paul Jones', 75, 'B003', 'BSS'),
('John Bonham', 70, 'B003', 'DRM'),
-- Pink Floyd
('David Gilmour', 75, 'B004', 'GTR'),
('Roger Waters', 78, 'B004', 'BSS'),
('Nick Mason', 76, 'B004', 'DRM'),
('Richard Wright', 75, 'B004', 'KBD'),
-- Queen
('Freddie Mercury', 45, 'B005', 'VOC'),
('Brian May', 74, 'B005', 'GTR'),
('Roger Taylor', 72, 'B005', 'DRM'),
('John Deacon', 70, 'B005', 'BSS'),
-- The Who
('Roger Daltrey', 77, 'B006', 'VOC'),
('Pete Townshend', 76, 'B006', 'GTR'),
('John Entwistle', 74, 'B006', 'BSS'),
('Keith Moon', 78, 'B006', 'DRM'),
-- Nirvana
('Kurt Cobain', 27, 'B007', 'VOC'),
('Krist Novoselic', 56, 'B007', 'BSS'),
('Dave Grohl', 52, 'B007', 'DRM'),
-- Metallica
('James Hetfield', 58, 'B008', 'VOC'),
('Kirk Hammett', 59, 'B008', 'GTR'),
('Lars Ulrich', 57, 'B008', 'DRM'),
('Robert Trujillo', 56, 'B008', 'BSS'),
-- AC/DC
('Brian Johnson', 73, 'B009', 'VOC'),
('Angus Young', 66, 'B009', 'GTR'),
('Phil Rudd', 67, 'B009', 'DRM'),
('Cliff Williams', 71, 'B009', 'BSS'),
-- Red Hot Chili Peppers
('Anthony Kiedis', 59, 'B010', 'VOC'),
('Flea', 58, 'B010', 'BSS'),
('Chad Smith', 59, 'B010', 'DRM'),
('John Frusciante', 51, 'B010', 'GTR'),
('Josh Klinghoffer', 42, 'B010', 'GTR'),
('Jack Irons', 58, 'B010', 'DRM'),
('Arik Marshall', 55, 'B010', 'GTR'),
('Clara Balzary', 30, 'B010', 'BKV'); -- Backup Vocalist

-- Store (performance) data
SELECT pg_get_serial_sequence('store', 'ticket_id');

INSERT INTO store (performance_name, performance_date, band_code)
VALUES
('Rolling Stones Live in Hyde Park', '2024-08-20 19:00:00', 'B001'),
('The Beatles Reunion Concert', '2024-09-15 20:00:00', 'B002'),
('Led Zeppelin World Tour', '2024-10-05 21:00:00', 'B003'),
('Pink Floyd The Wall Show', '2024-11-10 19:30:00', 'B004'),
('Queen Greatest Hits Tour', '2024-12-01 20:00:00', 'B005'),
('The Who Hits 50!', '2024-12-15 19:00:00', 'B006'),
('Nirvana Unplugged', '2025-01-20 18:00:00', 'B007'),
('Red Hot Chili Peppers World Tour', '2024-04-29 21:00:00', 'B010'),
('Metallica Worldwired Tour', '2025-02-10 20:00:00', 'B008'),
('AC/DC Rock or Bust', '2025-03-15 20:00:00', 'B009'),
('Red Hot Chili Peppers Stadium Arcadium Tour', '2025-04-20 21:00:00', 'B010'),
('Foo Fighters Live in Wembley', '2025-05-01 19:00:00', 'B007'),
('Aerosmith Rocks the World', '2025-05-20 20:00:00', 'B010'),
('Guns N'' Roses Reunion Tour', '2025-06-10 21:00:00', 'B006'),
('Bon Jovi This House Is Not for Sale Tour', '2025-06-25 19:30:00', 'B003'),
('U2 Joshua Tree Tour', '2025-07-05 20:00:00', 'B009'),
('Pearl Jam Live', '2025-07-20 21:00:00', 'B010'),
('The Doors Celebration Tour', '2025-08-01 19:00:00', 'B004'),
('Deep Purple Long Goodbye Tour', '2025-08-15 20:00:00', 'B005'),
('Journey Freedom Tour', '2025-09-01 19:00:00', 'B001'),
('Fleetwood Mac Reunion Tour', '2025-09-20 20:00:00', 'B002'),
('The Eagles Hotel California Tour', '2025-10-10 21:00:00', 'B005'),
('Def Leppard Hysteria Tour', '2025-10-25 19:30:00', 'B003'),
('The Beach Boys Sounds of Summer', '2025-11-05 20:00:00', 'B009'),
('Santana Supernatural Now Tour', '2025-11-20 21:00:00', 'B001'),
('ZZ Top 50th Anniversary Tour', '2025-12-01 19:00:00', 'B008');

-- Audience data (100 audiences)
INSERT INTO audience (nickname, ticket_id)
VALUES
('rock_fan_01', 1),('rock_fan_01', 10), ('beatles_fan_42', 2), ('zeppelin_lover', 3), ('pink_floyd_dreamer', 4),
('queen_enthusiast', 5), ('who_are_you', 6), ('nirvana_diehard', 7), ('metallica_headbanger', 8),
('acdc_thunder', 9), ('chili_pepper', 10), ('stones_fanatic', 1), ('beatles_mania', 2),
('zep_guitar_hero', 3), ('floydian_slip', 4), ('mercury_rising', 5), ('daltrey_roar', 6),
('cobain_fan', 7), ('metal_militia', 8), ('high_voltage', 9), ('stadium_rocker', 10),
('stone_rock', 1), ('lennon_legend', 2), ('page_pride', 3), ('comfortably_numb', 4),
('bohemian_rhapsody', 5), ('baba_oriley', 6), ('teen_spirit', 7), ('metal_up_your_ass', 8),
('back_in_black', 9), ('scar_tissue', 10), ('mick_lover', 1), ('fab_four_lover', 2),
('zeppelin_rocker', 3), ('shine_on', 4),('shine_on', 6), ('killer_queen', 5), ('quadrophenia', 6),
('nirvana_fan', 7), ('enter_sandman', 8), ('you_shook_me', 9), ('californication', 10),
('rolling_stone', 1), ('let_it_be', 2), ('ramble_on', 3), ('dark_side_of_moon', 4),
('radio_gaga', 5), ('the_real_me', 6), ('heart_shaped_box', 7), ('ride_the_lightning', 8),
('rock_n_roll_train', 9), ('soul_to_squeeze', 10), ('midnight_rambler', 1), ('yesterday', 2),
('whole_lotta_love', 3), ('wish_you_were_here', 4), ('we_will_rock_you', 5),
('pinball_wizard', 6), ('nirvana_soul', 7), ('for_whom_the_bell_tolls', 8), ('hells_bells', 9),
('snow_hey_oh', 10), ('tumblin_dice', 1), ('hey_jude', 2), ('stairway_to_heaven', 3),
('breathe', 4), ('somebody_to_love', 5), ('love_reign_oer_me', 6), ('nirvana_blew', 7),
('creeping_death', 8), ('tnt', 9), ('give_it_away', 10), ('paint_it_black', 1),
('come_together', 2), ('black_dog', 3), ('money', 4), ('dont_stop_me_now', 5),
('my_generation', 6), ('lake_of_fire', 7), ('one', 8), ('dirty_deeds', 9),
('by_the_way', 10), ('jumpin_jack_flash', 1), ('all_you_need_is_love', 2), ('kashmir', 3),
('us_and_them', 4), ('under_pressure', 5), ('bargain', 6), ('smells_like_teen_spirit', 7),
('master_of_puppets', 8), ('highway_to_hell', 9), ('suck_my_kiss', 10),
('foo_fanatic', 11), ('aero_head', 12), ('gnr_diehard', 13), ('bon_jovi_fan', 14),
('u2_lover', 15), ('pearl_jammer', 16), ('doors_worshipper', 17), ('purple_haze', 18),
('journey_believer', 19), ('fleetwood_mac', 20), ('eagles_nest', 21), ('def_leppard', 22),
('beach_bum', 23), ('santana_soul', 24), ('zz_topper', 25),
('foo_fighter_fan', 11), ('rock_god', 12), ('sweet_child', 13), ('jon_bon', 14),
('where_the_streets', 15), ('alive', 16), ('light_my_fire', 17), ('highway_star', 18),
('dont_stop_believin', 19), ('go_your_own_way', 20), ('hotel_california', 21), ('pour_some_sugar', 22),
('good_vibrations', 23), ('black_magic_woman', 24), ('sharp_dressed', 25),
('everlong', 11), ('dream_on', 12), ('november_rain', 13), ('wanted_dead_or_alive', 14),
('with_or_without_you', 15), ('evenflow', 16), ('riders_on_storm', 17), ('smoke_on_water', 18),
('wheel_in_the_sky', 19), ('gypsy', 20), ('take_it_easy', 21), ('rock_of_ages', 22);


-- Audience review data (30 reviews)
INSERT INTO audience_review (audience_id, ticket_id, review)
VALUES
(1, 1, 'Amazing performance by the Rolling Stones! It was a night to remember.'),
(2, 2, 'The Beatles were just as legendary as I imagined. A once-in-a-lifetime experience.'),
(3, 3, 'Led Zeppelin rocked the stage! The energy was electric.'),
(4, 4, 'Pink Floyd''s visuals were out of this world! The Wall Show was mesmerizing.'),
(5, 5, 'Queen delivered a powerful performance. Freddie may be gone, but the legacy lives on.'),
(6, 6, 'The Who still have it! Their energy is unmatched.'),
(7, 7, 'Nirvana Unplugged was an emotional experience. Kurt''s voice touched everyone''s heart.'),
(8, 8, 'Metallica brought the house down with their powerful riffs and thundering drums.'),
(9, 9, 'AC/DC knows how to keep the crowd alive! Rock or Bust indeed.'),
(10, 10, 'Red Hot Chili Peppers were on fire! Every song was a hit.'),
(11, 1, 'The Rolling Stones still got the moves!'),
(12, 2, 'The Beatles performed all my favorite classics.'),
(13, 3, 'Led Zeppelin''s Stairway to Heaven live was a spiritual experience.'),
(14, 4, 'Pink Floyd''s Comfortably Numb was out of this world.'),
(15, 5, 'Queen''s Bohemian Rhapsody live is a memory I''ll cherish forever.'),
(16, 6, 'The Who''s Baba O''Riley was the highlight of the night.'),
(17, 7, 'Nirvana''s Unplugged version of About a Girl was hauntingly beautiful.'),
(18, 8, 'Metallica''s Enter Sandman live is pure adrenaline.'),
(19, 9, 'AC/DC''s Thunderstruck live - the crowd went wild!'),
(20, 10, 'Red Hot Chili Peppers'' Californication was a perfect closing song.'),
(21, 1, 'The Rolling Stones know how to throw a party!'),
(22, 2, 'The Beatles reunited and it was magical.'),
(23, 3, 'Led Zeppelin''s Whole Lotta Love live was unforgettable.'),
(24, 4, 'Pink Floyd''s Dark Side of the Moon performance was an experience like no other.'),
(25, 5, 'Queen''s Radio Ga Ga had everyone singing along.'),
(26, 6, 'The Who''s Pinball Wizard was electrifying.'),
(27, 7, 'Nirvana''s unplugged version of The Man Who Sold the World gave me chills.'),
(28, 8, 'Metallica''s For Whom the Bell Tolls live - absolutely mind-blowing.'),
(29, 9, 'AC/DC''s Highway to Hell live is everything you would expect and more.'),
(30, 10, 'Red Hot Chili Peppers'' performance of Scar Tissue was deeply moving.'),
(31, 11, 'Foo Fighters delivered an energetic performance that shook Wembley!'),
(32, 12, 'Aerosmith still rocks as hard as ever!'),
(33, 13, 'Guns N'' Roses brought the house down with their reunion tour.'),
(34, 14, 'Bon Jovi knows how to put on a show. A true rock experience.'),
(35, 15, 'U2''s Joshua Tree Tour was an unforgettable journey.'),
(36, 16, 'Pearl Jam''s live performance was raw and powerful.'),
(37, 17, 'The Doors'' Celebration Tour captured the essence of their music.'),
(38, 18, 'Deep Purple proved they are still the masters of rock.'),
(39, 19, 'Journey took everyone on a nostalgic trip with their hits.'),
(40, 20, 'Fleetwood Mac''s reunion was nothing short of magical.'),
(41, 21, 'The Eagles'' Hotel California live was mesmerizing.'),
(42, 22, 'Def Leppard''s Hysteria Tour was a rock spectacle.'),
(43, 23, 'The Beach Boys brought summer to life with their classics.'),
(44, 24, 'Santana''s guitar skills are unparalleled. Supernatural indeed!'),
(45, 25, 'ZZ Top''s 50th Anniversary Tour was a blast from the past.'),
(31, 11, 'Foo Fighters rocked Wembley like no other band.'),
(32, 12, 'Aerosmith''s Dream On live was a dream come true.'),
(33, 13, 'Guns N'' Roses still got it. Sweet Child O'' Mine was epic.'),
(34, 14, 'Bon Jovi''s Wanted Dead or Alive was the highlight of the night.'),
(35, 15, 'U2 took us where the streets have no name. Simply amazing.'),
(36, 16, 'Pearl Jam''s Evenflow live gave me chills.'),
(37, 17, 'The Doors'' Riders on the Storm live was hauntingly beautiful.'),
(38, 18, 'Deep Purple''s Smoke on the Water live was legendary.'),
(39, 19, 'Journey''s Don''t Stop Believin'' had the whole crowd singing along.'),
(40, 20, 'Fleetwood Mac''s Go Your Own Way live was a showstopper.'),
(41, 21, 'The Eagles'' Take It Easy was the perfect closing song.'),
(42, 22, 'Def Leppard''s Rock of Ages live was a rock anthem for the ages.'),
(43, 23, 'The Beach Boys'' Good Vibrations live was pure joy.'),
(44, 24, 'Santana''s Black Magic Woman live was a spiritual experience.'),
(45, 25, 'ZZ Top''s Sharp Dressed Man live had everyone dancing.');


-- starbucks table
CREATE table if not exists starbucks_order (
    order_no SERIAL PRIMARY KEY,
    -- postgresql 
	-- order_dt TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	order_dt TIMESTAMP NOT NULL,
    branch VARCHAR(255) NOT NULL,
    order_item VARCHAR(255) NOT NULL,
    reg_name VARCHAR(255) NOT NULL,
	-- postgresql 
    -- reg_dts TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP
	reg_dts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO starbucks_order (order_dt, branch, order_item, reg_name, reg_dts) VALUES
('2024-08-16', '강남점', '아메리카노', '이민수', '2024-08-16 12:34:56'),
('2024-08-17', '분당점', '카페라떼', '김영희', '2024-08-17 10:23:45'),
('2024-08-18', '강남점', '그린티 프라푸치노', '박철수', '2024-08-18 11:45:23'),
('2024-08-19', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-19 09:15:33'),
('2024-08-20', '강남점', '바닐라 라떼', '홍길동', '2024-08-20 14:56:12'),
('2024-08-21', '분당점', '콜드브루', '이영애', '2024-08-21 16:23:44'),
('2024-08-22', '강남점', '카푸치노', '김철민', '2024-08-22 08:34:12'),
('2024-08-23', '분당점', '돌체 라떼', '박민준', '2024-08-23 13:45:34'),
('2024-08-24', '강남점', '자바칩 프라푸치노', '오지영', '2024-08-24 07:12:33'),
('2024-08-25', '분당점', '모카 프라푸치노', '한민희', '2024-08-25 10:45:56'),
('2024-08-15', '강남점', '아메리카노', '김영희', '2024-08-15 12:34:56'),
('2024-08-14', '분당점', '카페라떼', '이민수', '2024-08-14 13:45:23'),
('2024-08-13', '강남점', '그린티 프라푸치노', '박철수', '2024-08-13 14:56:34'),
('2024-08-12', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-12 15:23:11'),
('2024-08-11', '강남점', '바닐라 라떼', '홍길동', '2024-08-11 16:12:45'),
('2024-08-10', '분당점', '콜드브루', '이영애', '2024-08-10 17:34:23'),
('2024-08-09', '강남점', '카푸치노', '김철민', '2024-08-09 18:45:12'),
('2024-08-08', '분당점', '돌체 라떼', '박민준', '2024-08-08 19:23:45'),
('2024-08-07', '강남점', '자바칩 프라푸치노', '오지영', '2024-08-07 20:34:56'),
('2024-08-06', '분당점', '모카 프라푸치노', '한민희', '2024-08-06 21:45:34'),
('2024-08-05', '강남점', '아메리카노', '김영희', '2024-08-05 22:56:12'),
('2024-08-04', '분당점', '카페라떼', '이민수', '2024-08-04 23:34:23'),
('2024-08-03', '강남점', '그린티 프라푸치노', '박철수', '2024-08-03 08:12:34'),
('2024-08-02', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-02 09:34:56'),
('2024-08-01', '강남점', '바닐라 라떼', '홍길동', '2024-08-01 10:45:23'),
('2024-08-31', '분당점', '콜드브루', '이영애', '2024-08-31 11:12:45'),
('2024-08-30', '강남점', '카푸치노', '김철민', '2024-08-30 12:34:56'),
('2024-08-29', '분당점', '돌체 라떼', '박민준', '2024-08-29 13:45:23'),
('2024-08-28', '강남점', '자바칩 프라푸치노', '오지영', '2024-08-28 14:56:34'),
('2024-08-27', '분당점', '모카 프라푸치노', '한민희', '2024-08-27 15:23:45'),
('2024-08-26', '강남점', '아메리카노', '김영희', '2024-08-26 16:34:56'),
('2024-08-25', '분당점', '카페라떼', '이민수', '2024-08-25 17:45:23'),
('2024-08-24', '강남점', '그린티 프라푸치노', '박철수', '2024-08-24 18:12:34'),
('2024-08-23', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-23 19:34:56'),
('2024-08-22', '강남점', '바닐라 라떼', '홍길동', '2024-08-22 20:45:23'),
('2024-08-21', '분당점', '콜드브루', '이영애', '2024-08-21 21:12:45'),
('2024-08-20', '강남점', '카푸치노', '김철민', '2024-08-20 22:34:56'),
('2024-08-19', '분당점', '돌체 라떼', '박민준', '2024-08-19 23:45:23'),
('2024-08-18', '강남점', '자바칩 프라푸치노', '오지영', '2024-08-18 08:12:34'),
('2024-08-17', '분당점', '모카 프라푸치노', '한민희', '2024-08-17 09:34:56'),
('2024-08-16', '강남점', '아메리카노', '김영희', '2024-08-16 10:45:23'),
('2024-08-15', '분당점', '카페라떼', '이민수', '2024-08-15 11:12:34'),
('2024-08-14', '강남점', '그린티 프라푸치노', '박철수', '2024-08-14 12:34:56'),
('2024-08-13', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-13 13:45:23'),
('2024-08-12', '강남점', '바닐라 라떼', '홍길동', '2024-08-12 14:56:34'),
('2024-08-11', '분당점', '콜드브루', '이영애', '2024-08-11 15:23:45'),
('2024-08-10', '강남점', '카푸치노', '김철민', '2024-08-10 16:34:56'),
('2024-08-09', '분당점', '돌체 라떼', '박민준', '2024-08-09 17:45:23'),
('2024-08-08', '강남점', '자바칩 프라푸치노', '오지영', '2024-08-08 18:12:34'),
('2024-08-07', '분당점', '모카 프라푸치노', '한민희', '2024-08-07 19:34:56'),
('2024-08-06', '강남점', '아메리카노', '김영희', '2024-08-06 20:45:23'),
('2024-08-05', '분당점', '카페라떼', '이민수', '2024-08-05 21:12:34'),
('2024-08-04', '강남점', '그린티 프라푸치노', '박철수', '2024-08-04 22:34:56'),
('2024-08-03', '분당점', '카라멜 마끼아또', '최지훈', '2024-08-03 23:45:23'),
('2024-08-02', '강남점', '바닐라 라떼', '홍길동', '2024-08-02 08:12:34'),
('2024-08-01', '분당점', '콜드브루', '이영애', '2024-08-01 09:34:56'),
('2024-06-30', '강남점', '카푸치노', '김철민', '2024-06-30 10:45:23'),
('2024-06-29', '분당점', '돌체 라떼', '박민준', '2024-06-29 11:12:34'),
('2024-06-28', '강남점', '자바칩 프라푸치노', '오지영', '2024-06-28 12:34:56'),
('2024-06-27', '분당점', '모카 프라푸치노', '한민희', '2024-06-27 13:45:23'),
('2024-08-15', '강남점', '아메리카노', '김영희', '2024-08-15 08:30:00'),
('2024-08-15', '강남점', '아메리카노', '김영희', '2024-08-15 14:45:00'),
('2024-08-14', '분당점', '아메리카노', '이민수', '2024-08-14 09:00:00'),
('2024-08-14', '분당점', '아메리카노', '이민수', '2024-08-14 18:30:00'),
('2024-08-13', '강남점', '아메리카노', '박철수', '2024-08-13 10:15:00'),
('2024-08-13', '강남점', '아메리카노', '박철수', '2024-08-13 16:45:00'),
('2024-08-12', '분당점', '아메리카노', '최지훈', '2024-08-12 08:45:00'),
('2024-08-12', '분당점', '아메리카노', '최지훈', '2024-08-12 14:00:00'),
('2024-08-11', '강남점', '아메리카노', '홍길동', '2024-08-11 09:30:00'),
('2024-08-11', '강남점', '아메리카노', '홍길동', '2024-08-11 15:15:00'),
('2024-08-10', '분당점', '아메리카노', '이영애', '2024-08-10 10:45:00'),
('2024-08-10', '분당점', '아메리카노', '이영애', '2024-08-10 13:30:00'),
('2024-08-09', '강남점', '아메리카노', '김철민', '2024-08-09 09:00:00'),
('2024-08-09', '강남점', '아메리카노', '김철민', '2024-08-09 17:15:00'),
('2024-08-08', '분당점', '아메리카노', '박민준', '2024-08-08 11:30:00'),
('2024-08-08', '분당점', '아메리카노', '박민준', '2024-08-08 16:00:00'),
('2024-08-07', '강남점', '아메리카노', '오지영', '2024-08-07 12:45:00'),
('2024-08-07', '강남점', '아메리카노', '오지영', '2024-08-07 19:30:00'),
('2024-08-06', '분당점', '아메리카노', '한민희', '2024-08-06 08:00:00'),
('2024-08-06', '분당점', '아메리카노', '한민희', '2024-08-06 18:15:00'),
('2024-08-05', '강남점', '카페라떼', '이영애', '2024-08-05 09:00:00'),
('2024-08-05', '강남점', '바닐라 라떼', '이영애', '2024-08-05 15:00:00'),
('2024-08-04', '분당점', '그린티 프라푸치노', '김철민', '2024-08-04 10:00:00'),
('2024-08-04', '분당점', '모카 프라푸치노', '김철민', '2024-08-04 17:30:00'),
('2024-08-03', '강남점', '콜드브루', '박민준', '2024-08-03 11:15:00'),
('2024-08-03', '강남점', '자바칩 프라푸치노', '박민준', '2024-08-03 18:00:00'),
('2024-08-02', '분당점', '카라멜 마끼아또', '홍길동', '2024-08-02 08:45:00'),
('2024-08-02', '분당점', '카푸치노', '홍길동', '2024-08-02 14:15:00'),
('2024-08-01', '강남점', '아메리카노', '김영희', '2024-08-01 09:30:00'),
('2024-08-01', '강남점', '아메리카노', '김영희', '2024-08-01 13:45:00'),
('2024-08-31', '분당점', '그린티 프라푸치노', '이민수', '2024-08-31 10:15:00'),
('2024-08-31', '분당점', '그린티 프라푸치노', '이민수', '2024-07-31 16:30:00'),
('2024-08-30', '강남점', '콜드브루', '박철수', '2024-08-30 08:45:00'),
('2024-08-30', '강남점', '콜드브루', '박철수', '2024-08-30 15:00:00'),
('2024-08-29', '분당점', '바닐라 라떼', '최지훈', '2024-08-29 09:30:00'),
('2024-08-29', '분당점', '바닐라 라떼', '최지훈', '2024-08-29 13:15:00'),
('2024-08-28', '강남점', '카라멜 마끼아또', '홍길동', '2024-08-28 11:00:00'),
('2024-08-28', '강남점', '카라멜 마끼아또', '홍길동', '2024-08-28 17:45:00'),
('2024-08-27', '분당점', '아메리카노', '이영애', '2024-08-27 08:15:00'),
('2024-08-27', '분당점', '아메리카노', '이영애', '2024-08-27 14:00:00'),
('2024-08-26', '강남점', '아메리카노', '김철민', '2024-08-26 09:45:00'),
('2024-08-26', '강남점', '아메리카노', '김철민', '2024-08-26 17:15:00'),
('2024-08-25', '분당점', '아메리카노', '박민준', '2024-08-25 10:30:00'),
('2024-08-25', '분당점', '아메리카노', '박민준', '2024-08-25 16:45:00'),
('2024-08-24', '강남점', '아메리카노', '오지영', '2024-08-24 08:45:00'),
('2024-08-24', '강남점', '아메리카노', '오지영', '2024-08-24 14:30:00'),
('2024-08-23', '분당점', '아메리카노', '한민희', '2024-08-23 09:15:00'),
('2024-08-23', '분당점', '아메리카노', '한민희', '2024-08-23 15:30:00'),
('2024-08-22', '강남점', '아메리카노', '김영희', '2024-08-22 11:00:00'),
('2024-08-22', '강남점', '아메리카노', '김영희', '2024-08-22 18:00:00');

-- sqld table
CREATE TABLE IF NOT EXISTS sqld (
    student_name VARCHAR(50),
    subject VARCHAR(100),
    score INT
);
INSERT INTO sqld (student_name, subject, score) VALUES
('김기탁', '데이터 모델링의 이해', 15),
('김기탁', 'SQL 기본 및 활용', 40),
('이솔', '데이터 모델링의 이해', 38),
('이솔', 'SQL 기본 및 활용', 12),
('김재덕', '데이터 모델링의 이해', 48),
('김재덕', 'SQL 기본 및 활용', 31);

-- score table
CREATE TABLE IF NOT EXISTS exam_score (
    이름 VARCHAR(255),
    국어 INT,
    영어 INT,
    수학 INT
);
INSERT INTO exam_score (이름, 국어, 영어, 수학) VALUES
('김철수', 90, 88, 85),
('이영희', 90, 88, 85),
('박지민', 75, 88, 85),
('최수정', 95, 92, 87),
('홍길동', 70, 65, 73),
('정다은', 88, 91, 89),
('김민준', 66, 99, 85),
('이서연', 78, 85, 80),
('박준형', 90, 90, 75),
('장하은', 80, 83, 84);

-- category table
CREATE TABLE category (
    category_type VARCHAR(10),
    category_name VARCHAR(255),
    parent_category VARCHAR(255)
);
INSERT INTO category (category_type, category_name, parent_category) VALUES
('대', '컴퓨터/디지털/가전', NULL),
('중', '컴퓨터', '컴퓨터/디지털/가전'),
('중', '디지털', '컴퓨터/디지털/가전'),
('중', '가전', '컴퓨터/디지털/가전'),
('소', '노트북/PC', '컴퓨터'),
('소', '모니터/프린터', '컴퓨터'),
('소', '모바일/태블릿', '디지털'),
('소', '카메라', '디지털'),
('소', '영상가전', '가전'),
('소', '음향가전', '가전');

-- departments table
create table if not exists departments_backup (
    department_id INT,
    department_name VARCHAR(255),
    manager_id INT,
    location_id INT
);
create table if not exists  departments (
    department_id INT,
    department_name VARCHAR(255),
    manager_id INT,
    location_id INT
);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id, location_id) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', NULL, 1700),
(130, 'Corporate Tax', NULL, 1700),
(140, 'Control And Credit', NULL, 1700),
(150, 'Shareholder Services', NULL, 1700),
(160, 'Benefits', NULL, 1700),
(170, 'Manufacturing', NULL, 1700),
(180, 'Construction', NULL, 1700),
(190, 'Contracting', NULL, 1700),
(200, 'Operations', NULL, 1700),
(210, 'IT Support', NULL, 1700),
(220, 'NOC', NULL, 1700),
(230, 'IT Helpdesk', NULL, 1700),
(240, 'Government Sales', NULL, 1700),
(250, 'Retail Sales', NULL, 1700),
(260, 'Recruiting', NULL, 1700),
(270, 'Payroll', NULL, 1700);

-- event
CREATE TABLE event (
   event_name varchar(255),
   content varchar(255),
   member_id varchar(255),
   start_date datetime not null,
   end_date datetime not null
);
insert into event(event_name, content, member_id, start_date, end_date) values
("20% 할인 쿠폰", "연말 이벤트", "starboy01", "2024-12-01", "2025-12-01"),
("30% 할인 쿠폰", "새해 이벤트", "starboy02", "2024-01-01", "2025-01-01"),
("40% 할인 쿠폰", "상시 이벤트", "starboy03", "2020-01-01", "2025-01-01"),
("50% 할인 쿠폰", "고여잇는 이벤트", "starboy04", "1950-01-01", "2025-01-01");

