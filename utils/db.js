const mysql = require('mysql');
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    port: 3306,
    database: "dbbrasileiro",
    multipleStatements: true
});

db.connect((erro) => {
    if (erro){
        throw erro
    }
    console.log('conectando ao db...');
});

global.db = db;

module.exports = db;