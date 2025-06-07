SELECT
  c.id AS course_id,
  c.name AS course_name,
  i.full_name AS instructor_name
FROM
  course c NATURAL
  JOIN instructor i
WHERE
  i.full_name = 'Alex';
SELECT
  c.name AS course_name,
  r.student_id,
  r.content
FROM
  review r
  INNER JOIN course c ON c.id = r.course_id
WHERE
  c.name = 'Cyber Security';
SELECT
  s.student_id,
  c.name,
  s.score
FROM
  student_course s
  INNER JOIN course c ON c.id = s.course_id
WHERE
  s.student_id = 1
  AND cast(strftime("%Y", enrollment_date) AS integer) = 2021;
SELECT
  sc.student_id,
  s.full_name AS student_name,
  sc.score,
  sc.course_id,
  sc.enrollment_date
FROM
  student_course sc
  INNER JOIN student s ON s.id = sc.student_id
WHERE
  sc.course_id = 15
  AND strftime("%Y", enrollment_date) = '2020';
SELECT
  s.student_id,
  c.name AS course_name,
  s.enrollment_date
FROM
  student_course s
  INNER JOIN course c ON c.id = s.course_id
WHERE
  c.name = 'Machine Learning'
  AND strftime("%Y", enrollment_date) = '2021';
SELECT
  c.name AS course_name,
  count(s.student_id) AS no_of_students
FROM
  student_course s
  INNER JOIN course c ON c.id = s.course_id
WHERE
  c.name = 'Machine Learning'
  AND strftime("%Y", enrollment_date) = '2021';
SELECT
  count(sc.course_id) AS no_of_courses
FROM
  student s
  INNER JOIN student_course sc ON s.id = sc.student_id
WHERE
  s.full_name = 'Ram';
SELECT
  s.full_name,
  count(sc.course_id) AS no_of_courses
FROM
  student s
  LEFT JOIN student_course sc ON s.id = sc.student_id
GROUP BY
  s.id,
  s.full_name;
SELECT
  s.full_name,
  count(sc.course_id) AS no_of_courses
FROM
  student s
  LEFT JOIN student_course sc ON s.id = sc.student_id
GROUP BY
  s.id,
  s.full_name
HAVING
  count(sc.course_id) >= 2;
SELECT
  s.id AS student_id,
  s.full_name AS student_name,
  sc.course_id,
  c.name AS course_name,
  sc.score,
  sc.enrollment_date
FROM
  student s
  LEFT JOIN student_course sc ON s.id = sc.student_id
  LEFT JOIN course c ON sc.course_id = c.id;
SELECT
  s.id AS student_id,
  s.full_name,
  sc.course_id,
  c.name AS course_name,
  sc.enrollment_date
FROM
  student s
  LEFT JOIN student_course sc ON s.id = sc.student_id
  LEFT JOIN course c ON sc.course_id = c.id
WHERE
  c.name = 'Machine Learning'
  AND strftime("%Y", enrollment_date) = '2021';
