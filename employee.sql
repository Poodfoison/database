CREATE TABLE people(
    first_name text,
    last_name text,
    salary integer
)

INSERT INTO people (first_name, last_name, salary)
VALUES ('TJ', 'Olson', 50000);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Steven', 'Markle', 30000);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Jake', 'The Dog', 3002);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Jake', 'The Dog', 3002);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Fin', 'The Human', 300002);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Alexander', 'The great', 320);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Son', 'Goku', 30000);

INSERT INTO people (first_name, last_name, salary)
VALUES ('TJ', 'Olson', 4550000);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Steven', 'Markleses', 530000);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Jake', 'The Dog 4', 300222);

INSERT INTO people (first_name, last_name, salary)
VALUES ('Jake', 'The Dog 3', 3002);

select * from people


select * from people
WHERE salary < (select salary from people where last_name = 'The Dog 4');