CREATE DATABASE hw9_java_db;

USE hw9_java_db;

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sur_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary INT NOT NULL
);

CREATE TABLE addresses (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    house VARCHAR(10) NOT NULL,
    apartment VARCHAR(10) NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

INSERT INTO employees(sur_name, first_name, last_name, department, salary)
VALUES
    ('Миколайчук', 'Микола', 'Миколайович', 'Менеджмент', 2800),
    ('Євгененко', 'Євгенія', 'Євгеніївна', 'Менеджмент', 2600),
    ('Олександрієнко', 'Олександр', 'Олександрович', 'IT', 2000),
    ('Віталієнко', 'Віталіна', 'Віталіївна', 'IT', 1800),
    ('Олександрійчук', 'Олександра', 'Олександрівна', 'HR', 1400),
    ('Сергієнко', 'Сергій', 'Сергійович', 'Маркетинг', 1200);

INSERT INTO addresses(country, city, street, house, apartment, employee_id)
VALUES
    ('Україна', 'Запоріжжя', 'пр-т Соборний', '1 А', '1', 1),
    ('Україна', 'Запоріжжя', 'вул. Космічна', '2', '2', 1),
    ('Україна', 'Запоріжжя', 'пр-т Металургів', '3', '3', 2),
    ('Україна', 'Запоріжжя', 'вул. Радіо', '4 Б', '4', 3),
    ('Україна', 'Запоріжжя', 'вул. Українська', '5', '5', 3),
    ('Україна', 'Запоріжжя', 'вул. Запорізька', '6', '6', 4),
    ('Україна', 'Запоріжжя', 'вул. Базарна', '7 Г', '7', 5),
    ('Україна', 'Запоріжжя', 'вул. Сталеварів', '8', '8', 6);