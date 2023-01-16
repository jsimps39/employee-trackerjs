const inquirer = require('inquirer');
const prompt = inquirer.createPromptModule();
const mysql = require('mysql2');

const db = mysql.createConnection({
    user: "root",
    database: "employee_db",
});


const chooseOption = (type) => {
switch(type){
    case 'View all employees': {
     db.query('SELECT * FROM employee', (err, employees) => {
    console.table(employees);
});   
    }
    case 'View all departments':{
        db.query('SELECT * FROM employee', (err, departments) => {
    console.table(departments);
});    
}
    case 'View all roles': {
    db.query('SELECT * FROM employee', (err, roles) => {
    console.table(roles);
});
}
} 
}

const init = () => {
prompt ({
    type: 'rawList',
    message: 'Chooose one of the following',
    choices: [
        'View all employees',
        'View all departments',
        'View all roles'
    ],
    name: 'type',
})
.then((answers) => {
    chooseOption(answers.type);
});
}