-- Retrieve the titles of employees who were born bt. Jan 1952 and Dec 1955
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
--INTO
--	retirement_titles
FROM
	employees as e 
INNER JOIN
	titles as tt 
ON
	e.emp_no = tt.emp_no
WHERE
	(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY
	e.emp_no



-- Use Dictinct with Orderby to remove duplicate rows
SELECT 
DISTINCT ON 
	(rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
--INTO 
--	unique_titles
FROM
	retirement_titles as rt
WHERE
	(rt.to_date = '9999-01-01')
ORDER BY
	rt.emp_no, rt.to_date DESC;

-- Retrieve number of employees by their most recent job title who are about to retire
SELECT
COUNT
	(ut.title),
	ut.title
-- INTO
--	retiring_titles
FROM
	unique_titles as ut
GROUP BY
	ut.title
ORDER BY
	COUNT(ut.title) DESC;
	
-- Mentorship-eligibility table holding current employees born bet. Jan 1965 and Dec 1965
SELECT
DISTINCT ON
	(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tt.title
--INTO
--	mentorship_eligibility
FROM
	employees as e
INNER JOIN
	dept_emp as de
ON 
	(e.emp_no = de.emp_no)
INNER JOIN 
	titles as tt
ON 
	(e.emp_no = tt.emp_no)
WHERE
	(de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY
	e.emp_no;
	
	
-- Total number of employees per title
SELECT
COUNT
	(me.title),
	me.title
	
--INTO
--	mentors_per_title
FROM
	mentorship_eligibility as me
GROUP BY
	me.title
ORDER BY
	COUNT(me.title) DESC;






-- Department each mentor falls under
SELECT
DISTINCT ON
	(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tt.title,
	d.dept_name
-- INTO
-- 	mentorship_eligibility_dept
FROM
	employees as e
INNER JOIN
 	dept_emp as de
ON
	(e.emp_no = de.emp_no)
INNER JOIN 
	titles as tt
ON 
	(e.emp_no = tt.emp_no)
INNER JOIN 
	departments as d
ON 
	de.dept_no = d.dept_no
WHERE
	(de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY
	e.emp_no;

SELECT
	me.title,
	me.dept_name,
COUNT
	(me.title)
--INTO
-- mentors_per_dept
FROM
	mentorship_eligibility_dept as me
GROUP BY
	me.title
ORDER BY
	COUNT(me.title) DESC;
