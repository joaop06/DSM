const mysql = require("mysql2")

const connection = new mysql.createConnection({
    host: 'localhost',
    user: 'rangon',
    password: 'pi2dsm',
    database: 'rangon',
})

module.exports = connection


/*
const mysql = require("mysql2")

const connection = new mysql.createConnection({
    host: 'db4free.net',
    user: 'rangon',
    password: 'pi2dsm@@@',
    database: 'rangon',
    port: '3306'
})

module.exports = connection
*/