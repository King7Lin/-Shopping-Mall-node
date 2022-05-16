const mysql = require('mysql')

const db = mysql.createPool({
    host:'localhost',
    user:'root',
    password:'162683qc',
    database:'final'
})

module.exports = db