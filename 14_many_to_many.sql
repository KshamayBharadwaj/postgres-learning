CREATE TABLE students(
    s_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses(
    c_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    fees NUMERIC DEFAULT 50000
);

CREATE TABLE student_course(
    student_id INT NOT NULL REFERENCES students(s_id),
    course_id INT NOT NULL REFERENCES courses(c_id)
);

CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL REFERENCES students(s_id),
    c_id INT NOT NULL REFERENCES courses(c_id),
    enrollment_date DATE NOT NULL
);

-- Students
INSERT INTO students (student_name) VALUES
('Max Verstappen'),
('Lando Norris'),
('Charles Leclerc'),
('Lewis Hamilton');


-- Courses
INSERT INTO courses (course_name, fees) VALUES
('Formula 1 Engineering', 75000),
('Race Strategy', 55000),
('Motorsport Analytics', 65000);


-- Student-Course
INSERT INTO student_course (student_id, course_id) VALUES
(1, 1),  -- Max -> F1 Engineering
(1, 2),  -- Max -> Race Strategy
(2, 3),  -- Lando -> Motorsport Analytics
(3, 1),  -- Charles -> F1 Engineering
(4, 2);  -- Lewis -> Race Strategy


-- Enrollment
INSERT INTO enrollment (s_id, c_id, enrollment_date) VALUES
(1, 1, '2026-01-10'),
(1, 2, '2026-01-15'),
(2, 3, '2026-01-12'),
(3, 1, '2026-01-20'),
(4, 2, '2026-01-25');

SELECT s.student_name,c.course_name,c.fees FROM 
enrollment e
JOIN students s ON e.s_id=s.s_id
JOIN courses c on e.c_id = c.c_id;
