const inquirer = require('inquirer');
const prompt = inquirer.createPromptModule();
const mysql = require('mysql2');
require('console.table');

const db = mysql.createConnection({
    user: "root",
    database: "employee_db",
});


const chooseOption = (type) => {
    switch (type) {
        case 'View all employees': {
            db.query('SELECT * FROM employee', (err, employee) => {
                console.table(employee);
                init();
            });
            break;
        }
        case 'View all departments': {
            db.query('SELECT * FROM department', (err, department) => {
                console.table(department);
                init();
            });
            break;
        }
        case 'View all roles': {
            db.query('SELECT * FROM role', (err, role) => {
                console.table(role);
                init();
            });
            break;
        }
    }
}

const init = () => {
    prompt({
        type: 'rawList',
        message: 'Chooose one of the following',
        choices: [
            'View all employees',
            'View all departments',
            'View all roles',
        ],
        name: 'type',
    })
        .then((answers) => {
            chooseOption(answers.type);
        });
};

init();