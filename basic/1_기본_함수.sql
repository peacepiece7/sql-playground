-- # SELECT
SELECT * FROM band;

-- # 산술 연산자
SELECT * FROM band_member AS B;

-- %, / 연산자 사용시 0으로 나누면 에러 발생
SELECT *, (BM.age + 1 / 10) FROM band_member as BM;

-- # 함수

-- ascii(str): num
-- char(num): str
SELECT * FROM sqld;
SELECT CHAR(65)  FROM sqld; -- mysql에서 blob으로 표기됨
SELECT CAST(CHAR(65) as CHAR) FROM sqld;
SELECT ASCII("A") from sqld;

-- upper(str): str
-- lower(str): str
SELECT name FROM band_member;
SELECT lower(name), upper(name) FROM band_member;

-- trim(str): str
SELECT ltrim(name), rtrim(name) from band_member;
SELECT ltrim(name, 'A'), rtrim(name) from band_member;
-- mysql, mssql은 공백만 지울 수 있어서 대신 이렇게 한다.
SELECT 
	(
		CASE 
			WHEN LEFT(name, 1) = 'A' THEN SUBSTRING(name, 2)
			ELSE name
		END
	) AS left_trimmed_name,
	name as origin_name
FROM band_member;

-- substr(str, num): str
-- substring(str, num): str
SELECT name FROM band_member;
SELECT 
	substr(name, 2) as substr_name,
    substring(name, 2) as substring_name,
    name as original_name
FROM band_member;

-- length(arg)
SELECT
	length(name) as name_length, -- string 길이
    length(null) as null_length, -- null
    length(100) as number_length, -- number 자릿수 (100 -> 3, 1000 -> 4)
	name as original_name
FROM band_member;

-- replace(arg1, arg2, arg3)
SELECT
	replace(name, 'John', '존'),
    replace(lower(name), 'john', '존'),
    replace(202013, 13, 10) as '202010',
    replace(202013, 13, 'foo') as '2020foo',
    name
FROM band_member;

-- pad(arg1, num, arg2)
select name from band_member;
select 
	lpad(name, 20, 'v'), 
    rpad(name, 20, 'v'), 
    name as original_name 
from band_member;

-- abs(arg) 
-- sign(arg)
select * from sqld;
select 
	abs(10), -- 10
	abs(-1), -- 1
    abs(null), -- null
    abs(''), -- 0
    abs('12'), -- 12
    abs('-10') -- 10
from sqld;
  -- result : 1, -1, null, 0, 1, -1
select 
	sign(10), -- 1
    sign(-1), -- -1
    sign(null), -- null
    sign(''), -- 0
    sign('12'), -- 1
    sign('-10') -- -1
from sqld;

-- round(arg1, arg2), 반올림
select * from sqld;
select 
    round(163.76, -3) as '0',
	round(163.76, -2) as '200', 
    round(163.76, -1) as '160',
	round(163.76, 0) as '164',
	round(163.76, 1) as '163.8',
    round(163.76, 2) as '163.76',
    round(163.76, 3) as '163.76',
    round(-163.76, -3) as '0',
	round(-163.76, -2) as '-200',
    round(-163.76, -1) as '-160',
	round(-163.76, 0) as '-164',
	round(-163.76, 1) as '-163.8',
    round(-163.76, 2) as '-163.76',
    round(-163.76, 3) as '-163.76',
    round(null, 1) as 'null',
    round('163.76', 0) as '164',
	round('-163.76', 0) as '164'
from sqld;

-- ceil(arg), 올림
select 
    ceil(163.76) as '164',
    ceil(-163.76) as '-163',
    ceil(null) as 'null',
    ceil('163.76') as '164',
    ceil('-163.76') as '-163'
from sqld;

-- floor(arg), 내림
select 
    floor(163.76) as '163',
    floor(-163.76) as '-164',
    floor(null) as 'null',
    floor('163.76') as '163',
    floor('-163.76') as '-164'
from sqld;

-- mod(arg, arg), 나눗셈
  --  null, 0으로 나누면 db에 따라 에러 터지기도 함
select
	mod(10, 3) as '1',
    mod(10, -2) as '0',
    mod(10, null) as 'null',
    mod('10', 3) as '1',
    mod('10', '3') as '1',
    mod('10', '-3') as '1',
    mod(10, 0) as 'null'
from sqld;


-- # 날짜 함수
select * from sqld;

-- 시스템 날짜 (호출된 순간의 시간)
select sysdate() from sqld;

-- 현재 날짜 (트랜잭션 시작 시간)
select now() from sqld;

select timestamp from sqld;

-- 날짜 추출하기
select 
	-- year
	YEAR(SYSDATE()), 
    extract(year from sysdate()),
    
    -- month
	month(sysdate()),
	extract(month from sysdate()),
    
    -- day
    day(sysdate()), 
    extract(day from sysdate()),
    
    -- date
    date(sysdate()),
	-- extract(date from sysdate()) (x),
        
    -- hour
    hour(sysdate()),
	extract(hour from sysdate()),
    -- minute
    inute(sysdate()),
	extract(minute from sysdate()),
    
    -- second
    second(sysdate()),
    extract(second from sysdate())
from sqld;

-- adddate(arg1, arg2)
select 
	'2024-01-01', 
    adddate('2024-01-01', 5),
    adddate('2024-01-01', INTERVAL 2 MONTH),
	adddate('2024-01-01', INTERVAL -2 MONTH),
    adddate('2024-01-01', INTERVAL 2 YEAR),
    adddate('2024-01-01', INTERVAL 2 HOUR),
    adddate('2024-01-01', INTERVAL 2 MINUTE),
    adddate('2024-01-01', INTERVAL 2 SECOND),
	adddate('2024-01-01', INTERVAL -2 SECOND)
;

-- addtime(arg1, arg2)
select
	'2024-01-01 08:30:00',
    addtime('2024-01-01 08:30:00', '05:00:00'),
    addtime('2024-01-01 08:30:00', '-20:00:00'),
    addtime('2024-01-01 08:30:00', '2023-01-01') -- (X)
;

-- addtime, adddate 활용
SELECT ADDTIME(ADDDATE('2024-01-01 08:30:00', INTERVAL 1 YEAR), '08:00:00') AS new_datetime;

-- # 변환 함수
-- oracle, postgresql은 to_number, to_string, to_date 등 

-- cast(sql 표준 함수, 가능한 요것 쓰기)
-- convert(mysql 제공, 문자열 인코딩에 사용)
SELECT 
	cast(22 as char), 
    convert(22, char),
    cast('22' as signed),
    convert('22', signed),
    cast('-22' as unsigned), -- overlfow!
    convert('-22', unsigned),
    convert('-22', signed),
    abs(convert('-22', signed)) -- 정수로 뽑으려면 이렇게
;


-- # null 관련 함수
  -- nvl, nvl2, coalesce, nullif, ifnull 등 다양함
  -- sql 표준 null 관련 함수만 알아보자

-- ifnull(arg1, arg2), orcle의 nvl 대신 씀
select 
	ifnull('foo', 'foo'), 
    ifnull(null, 'bar'), 
    ifnull(0, 'barz'), 
    ifnull(-1, 'fredo');

-- coalesce(...args)
select
	coalesce(null, 'foo', 'bar'),
    coalesce(null, null, 'barz'),
    coalesce(null, -1, 'fredo'),
    coalesce(null, false, 'waldo') as '0';

-- # 비교함수
-- `=`, `<`, `<=`, `>`, `>=`
-- `!=`, `^=`, `<>`, `not <column> =` (같지 않음 4종)
-- between A and B
-- in (args), is <type>
-- and, or, not

-- in (args), not & or
select * from  band_member bm 
where bm.name in ('John Doe', 'Jane Smith');
        
select * from band_member bm 
where (bm.name = 'John Doe' or bm.name = 'Jane Smith');

select * 
from band_member bm 
where not (bm.name = 'John Doe' or bm.name = 'Jane Smith');

select * from band_member bm 
where not (bm.name in ('John Doe', 'Jane Smith')); 

-- case
select
  band_code,
  case
    when bm.band_code is null then 'is null'
    when bm.band_code like "%002%" then '비틀즈'
    else (select b.band_name from band b where b.band_code = bm.band_code)
  end as band_code_str
from band_member bm;

-- # group by, having

/*
"f"rom "w"ei"gh"t "so" 
- select - 5
- from - 1
- where - 2
- group by - 3
- having - 4
- order by - 6
*/

-- sum(col)
-- avg(col)
-- min(col)
-- max(col)
-- count(col)
select * from exam_score where 이름 in ("김철수", "이영희", "박지민");
select 
	max(국어),
    min(국어),
    avg(국어), -- precision: double(15~ 17)
    count(국어)
from exam_score 
where 이름 in ("김철수", "이영희", "박지민");


-- count(distict col)
select * from departments;
select count(*) from departments; -- count all
select count(distinct manager_id) from departments; -- null, 중복 값 제거

-- having (group by의 where 절)
select * from band_member;


select member_role_code, count(*) as member_count from band_member
group by member_role_code;

select member_role_code, count(*) as member_count from band_member
group by member_role_code
having member_count > 10;

select member_role_code, count(*) as member_count from band_member
where created_at between '2024-01-01' and '2024-10-31' -- group by는 비용으 큼 미리 범위 좁히기
group by member_role_code
having member_count > 10;

-- order by
select * from exam_score order by 국어 desc, 영어 desc, 수학 desc;
select * from exam_score order by 국어, 영어, 수학; -- default asc
select round((국어 + 영어 + 수학) / 3, 2) as average from exam_score order by average desc;


-- # join

-- EQUI join (eqaul join)
select * from band_member;
select * from band;

select 
	B.band_name, 
    BM.name as band_member_name 
from band B, band_member BM
where B.band_code = BM.band_code;

-- Non EQUI join (non equal join)
  -- 보통 이벤트 기간 내 리뷰 작성 사용
select * from person;
select * from event;

  -- 이벤트 기간내 태어난 사람 
select * 
from person P, event E
where P.birthday between E.start_date and E.end_date;

-- 다중 조인
select * from band_member;
select * from band;
select * from band_role;
select 
	B.band_name,
    BM.name,
    BR.role_name
from band B, band_member BM, band_role BR
where B.band_code = BM.band_code 
	and BM.member_role_code = BR.code;

-- standard join (outer, inner join)
select * from person;
select * from event;

-- left outer join,
  -- 매칭되는 event 없어도 person 출력
select 
  P.name,
  E.event_name,
  E.content
from person P left outer join event E
on P.birthday between E.start_date and E.end_date
order by event_name;

-- right outer join
  -- 매칭되는 person이 없어도 event 출력
select 
  P.name,
  E.event_name,
  E.content
from person P right outer join event E
on P.birthday between E.start_date and E.end_date
order by event_name;

-- inner join
  -- 매칭되는 데이터만 출력
select 
  P.name,
  E.event_name,
  E.content
from person P inner join event E
on P.birthday between E.start_date and E.end_date
order by event_name;


-- natural join
  -- 필드와 값이 같으면 조인됨, 권장하지 않음
select * from band;
select * from band_member;
select 
	B.band_name,
    BM.name
from band B natural join band_member BM;

-- using(field_name)
  -- using 내 필드명과 값이 같으면 조인됨
  -- natural join 대신 명시적으로 씀
select 
	B.band_name,
    BM.name
from band B inner join band_member BM
using(band_code);

-- cross join
  -- combination임, catesian product 라고도 함
select
   P.name,
   B.band_name,
   S.performance_name,
   S.performance_date
 from person P 
	cross join store S
	inner join band B on B.band_code = S.band_code;
