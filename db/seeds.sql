-- Engineering --
    -- lead engineer--
    -- Allison Becker
    --junior engineer--
    --Trent Arnold
-- sales --
    --sales lead---
    --Andrew Robertson
    ---sales associate --
    --Ibrahima Konate
    --account executive --
    --Joel Matip
-- human resources --
    -- director --
    --Mo Salah
    --specialist--
    --Luis Diaz
-- Finance --
    --CFO--
    --Darwin Nunez
    --Accountant--
    --Diogo Jota
    --Financial analyst--
    --Jordan Henderson--

    INSERT INTO department (name)
    VALUES 
    ('Engineering'), --1--
    ('Sales'),
    ('Human Resources'),
    ('Finance');

    INSERT INTO role (title, salary, deprament_id)
    VALUES
    ('Lead Engineer', 10000, 1),
    ('junior engineer',10000, 1),
    ('sales lead',10000, 2),
    ('sales associate',10000, 2),
    ('account executive',10000, 2),
    ('director',10000, 3),
    ('specialist',10000, 3),
    ('CFO',10000, 4),
    ('Accountant',10000, 4),
    ('Financial analyst',10000, 4);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES 
    ('Allison', 'Becker', 1),
    ('Trent', ' Arnold', 1),
    ('Andrew ', 'Robertson', 2),
    ('Ibrahima  ', 'Konate', 2),
    ('Joel', 'Matip', 2),
    ('Mo ', 'Salah', 3),
    ('Luis ', 'Diaz', 3),
    ('Darwin', 'Nunez', 4),
    ('Diogo', ' Jota', 4),
    ('Jordan ', 'Henderson', 4),