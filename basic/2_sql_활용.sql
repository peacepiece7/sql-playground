-- subquery
  -- select, from, where, having 에서 쓸 수 있음
  -- select -> scalar subquery
  -- from -> inline view
  -- where, having -> nested subquery
  
-- scalar subquery
select 
	A.nickname,
	(
		select B.band_name
        from band as B
        left outer join store as S
			on B.band_code = S.band_code
        where A.ticket_id = S.ticket_id -- 하나만 올 수 있음!
    ) as band_name
from audience as A;

-- inline view
select 
	A.nickname,
	BS.band_name,
	BS.performance_date
from audience A, (
	select 
		B.band_name, 
		S.performance_date
	from band as B
    join store as S
		on B.band_code = S.band_code
) as BS;

-- nested subquery
  -- 메인 쿼리랑 연관 관게에 따라 비/연관 쿼리로 나뉜다.

-- "tour"단어가 들어간 공연 티캣을 가진 관객의 이름
select 
	A.nickname
from audience A
where A.ticket_id = (
	select ticket_id
	from store as S
	where lower(S.performance_name) like '%tour%'
		and S.ticket_id = A.ticket_id
);

-- # 서브쿼리 다중 행, 단일 행 반환
  -- 지금까지 서브쿼리 예제는 단일 행 반환

-- 다중 행 반환
-- some, in, all, any, exists
-- 가장많이 공연하는 벤드 5개
select 
	B.band_name,
	(
		select count(*) 
		from store as S 
		where B.band_code = S.band_code
	) AS store_count
from band as B 
join
	(
		select band_code
		from store
		group by band_code
		order by count(*) desc
		limit 5
	) as top_band
on B.band_code = top_band.band_code;

-- view
drop view actors;
create or replace view actors as
	select p.name as person_name, j.job_name
	from person p join job j
	on p.job_code = j.job_code
	where lower(j.job_name) = 'actor';

drop view signers;
create or replace view signers as
	select p.name as person_name, j.job_name
	from person p join job j
	on p.job_code = j.job_code
	where lower(j.job_name) = 'singer';

drop view professionals;
create or replace view professionals as
	select p.name as person_name, j.job_name
	from person p join job j
	on p.job_code = j.job_code;
    
    

-- UNION ALL: 합칩합, 중복 출력
select * from actors
union all
select * from signers
order by person_name;


-- UNION: 합집합, 중복 제거
select * from actors;
select * from professionals;

select * from professionals
union
select * from signers
order by person_name;

-- INTERSECT: 교집합, 중복 제거
select * from actors;
select * from actors
intersect
select * from professionals;
  -- mysql 교집합대체 (inner join)
SELECT * 
FROM actors 
INNER JOIN professionals 
ON actors.id = professionals.id;

-- MINUS/EXCEPT 차집합, 중복 제거
select * from professionals
except
select * from actors;
  -- mysql 차집합 대체 (is null)
SELECT 
	P.person_name as p_name,
    P.job_name as P_job,
    A.person_name as A_name,
    A.job_name as A_job
FROM professionals as P
LEFT JOIN actors as A
ON P.job_name = A.job_name
WHERE P.job_name IS NOT NULL;

-- # 그룹 함수
	-- 이거는 나중에 한번 더 공부하자, 싹 보긴했는데 현업에서 CRUD 하려면 기본 ~ 서브쿼리까지 손에 익히는게 우선일듯
    
    
-- # TOP_N 쿼리
SELECT *
FROM (
    SELECT
        ROW_NUMBER() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS `row_number`,
        RANK() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS `rank`,
        DENSE_RANK() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS `dense_rank`,
        이름, 국어, 영어, 수학
    FROM exam_score es
) AS ranked_scores;

-- # self join
-- 하나씩 찍어보면서 따라가보자
select * from category a;

-- 부모 이름으로 셀프 조인해본다.
select *
from category a, category b
where a.category_name = b.parent_category;

-- 부모는 "대"로 조건 추가
select *
from category a, category b
where a.category_name = b.parent_category
  and a.category_type = '대';

-- 안쓰는 컬럼 제거
select
  a.category_type,
  a.category_name,
  b.category_type,
  b.category_name
from category a, category b
where a.category_name = b.parent_category
  and a.category_type = '대';

-- 대, 중, 소분류를 해본다.
select
  a.category_type,
  a.category_name,
  b.category_type,
  b.category_name,
  c.category_type,
  c.category_name
from category a, category b, category c
where a.category_name = b.parent_category
  and a.category_type = '대'
  and b.category_type = '중'
  and c.category_type = '소';

-- 하드코딩은 별로니까, 처음에 했던 부모 이름으로 셀프 조인한다.
select
  a.category_type,
  a.category_name,
  b.category_type,
  b.category_name,
  c.category_type,
  c.category_name
from category a, category b, category c
where a.category_name = b.parent_category
  and a.category_name = b.parent_category
  and b.category_name = c.parent_category;
  
-- 계층 쿼리

  -- oracle
select
  level,
  sys_connect_by_path('['||category_type||']'||category_name, '-') as path
from category a
start with parent_category is null
connect by prior category_name = parent_category;

  -- postgresql
WITH RECURSIVE category_hierarchy AS (
-- 초기 레벨 설정 (parent_category가 NULL인 루트 노드)
SELECT
  1 AS level,
  category_type,
  category_name,
  category_name::text AS path -- path를 명시적으로 text로 캐스팅
FROM category
WHERE parent_category IS NULL
    UNION ALL
    -- 재귀적으로 하위 레벨을 탐색
    SELECT
        ch.level + 1 AS level,
        c.category_type,
        c.category_name,
        (ch.path || '-' || '[' || c.category_type || ']' || c.category_name)::text AS path
    FROM
        category c
    INNER JOIN
        category_hierarchy ch
    ON
        c.parent_category = ch.category_name
)
SELECT
  level,
  path
FROM
category_hierarchy
ORDER BY path;

  -- mysql
WITH RECURSIVE category_hierarchy AS (
    -- 초기 레벨 설정 (parent_category가 NULL인 루트 노드)
    SELECT
        1 AS level,
        category_type,
        category_name,
        CONCAT('[', category_type, ']', category_name) AS path
    FROM category
    WHERE parent_category IS NULL
    UNION ALL
    -- 재귀적으로 하위 레벨을 탐색
    SELECT
        ch.level + 1 AS level,
        c.category_type,
        c.category_name,
        CONCAT(ch.path, '-', '[', c.category_type, ']', c.category_name) AS path
    FROM
        category c
    INNER JOIN
        category_hierarchy ch ON c.parent_category = ch.category_name
)
SELECT
    level,
    path
FROM
    category_hierarchy
ORDER BY path;