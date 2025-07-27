CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL
);

INSERT INTO members (id, full_name) VALUES
(101, 'Shira Levi'),
(102, 'Nadav Cohen'),
(103, 'Yael Azulay');

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE nurses (
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO patients (name) VALUES ('Yoni'), ('Dana'), ('Avi');
INSERT INTO nurses (name) VALUES ('Avi'), ('Tamar'), ('Lior');

select name from patients
union 
select name from nurses;

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title TEXT,
    director_id SERIAL,
    FOREIGN KEY(director_id) REFERENCES directors(director_id) ON DELETE CASCADE
);

INSERT INTO directors (name) VALUES ('Spielberg');
INSERT INTO movies (title, director_id) VALUES ('Jaws', 1);

delete from directors
where director_id = 1;

CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO trainers (name) VALUES
('Noa Rozen'),
('Shira Cohen'),
('Nadav Levi');

CREATE TABLE measurements (
    id SERIAL PRIMARY KEY,
    value NUMERIC(5,2)
);

INSERT INTO measurements (value)
VALUES
(round(RANDOM() * 10 + 5::numeric, 2)),
(round(RANDOM() * 10 + 5::numeric, 2)),
(round(RANDOM() * 10 + 5::numeric, 2));


CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    student_name TEXT NOT NULL,
    courses  JSONB
);


INSERT INTO enrollments (student_name, courses ) VALUES
('Roni','{"math": "2024-11-01", "history": "2024-11-15"}'::jsonb),
('Alon','{"math": "2024-11-01"}'::jsonb);















