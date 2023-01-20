USE employee_db; 
    INSERT INTO department (name)
        VALUES 
        ('Engineering'),
        ('Sales'),
        ('Human Resources'),
        ('Finance');

    INSERT INTO role (title, salary, department_id)
    VALUES
    ('Lead Engineer', 10000, 1),
    ('junior engineer', 10000, 1),
    ('sales lead', 10000, 2),
    ('sales associate', 10000, 2),
    ('account executive', 10000, 2),
    ('director', 10000, 3),
    ('specialist', 10000, 3),
    ('CFO', 10000, 4),
    ('Accountant', 10000, 4),
    ('Financial analyst', 10000, 4);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES 
    ('Allison', 'Becker', 1, null),
    ('Trent', 'Arnold', 2, 1),
    ('Andrew', 'Robertson', 3, null),
    ('Ibrahima', 'Konate', 4, 3),
    ('Joel', 'Matip', 5, 3),
    ('Mo', 'Salah', 6, null),
    ('Luis', 'Diaz', 7, 6),
    ('Darwin', 'Nunez', 8, null),
    ('Diogo', 'Jota', 9, 10),
    ('Jordan', 'Henderson', 10, 10);