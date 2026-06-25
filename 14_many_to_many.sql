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

