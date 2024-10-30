



CREATE TABLE sqld (
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


CREATE TABLE exam_score (
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