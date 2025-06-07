SELECT
  id,
  name,
  duration,
  instructor_id,
  full_name,
  gender
FROM
  course c NATURAL
  JOIN instructor i;
SELECT
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id,
  s.id,
  s.full_name,
  s.age,
  s.gender
FROM
  review r
  INNER JOIN student s ON r.student_id = s.id;
SELECT
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id,
  c.id,
  c.name,
  c.duration,
  c.instructor_id
FROM
  review r
  INNER JOIN course c ON c.id = r.course_id;
SELECT
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id,
  c.id,
  c.name,
  c.duration,
  c.instructor_id
FROM
  review r
  INNER JOIN course c ON c.id = r.course_id
WHERE
  c.name = 'Cyber Security';
SELECT
  c.id,
  c.name,
  c.duration,
  c.instructor_id,
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id
FROM
  course c
  LEFT JOIN review r ON c.id = r.course_id;
SELECT
  c.id,
  c.name,
  c.duration,
  c.instructor_id,
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id
FROM
  course c
  LEFT JOIN review r ON c.id = r.course_id
WHERE
  c.name = 'Cyber Security';
SELECT
  c.id,
  c.name,
  c.duration,
  c.instructor_id,
  r.id,
  r.course_id,
  r.content,
  r.created_at,
  r.student_id
FROM
  course c
  LEFT JOIN review r ON c.id = r.course_id
WHERE
  c.name = 'Linux';
SELECT
  c.name
FROM
  course c
  LEFT JOIN review r ON c.id = r.course_id
WHERE
  r.id IS NULL;
SELECT
  s.full_name
FROM
  student s
  LEFT JOIN student_course c ON s.id = c.student_id
WHERE
  c.course_id IS NULL;
SELECT
  c.name
FROM
  course c
  LEFT JOIN student_course s ON c.id = s.course_id
WHERE
  s.student_id IS NULL;
