SELECT count(t.title) AS "Number of Employees",  t.title from titles t
LEFT JOIN employees e on t.emp_no = e.emp_no
where birth_date > "1965-01-01" GROUP BY title;


SELECT avg(s.salary) AS "Average pay by position", t.title from titles t
LEFT JOIN salaries s on t.emp_no = s.emp_no
GROUP BY title;



SELECT sum(s.salary) from salaries s
INNER JOIN dept_emp de on de.emp_no = s.emp_no
WHERE de.dept_no = 'd001' AND s.to_date between "1990-01-01" and "1992-01-01";