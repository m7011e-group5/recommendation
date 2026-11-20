const Pool = require("pg").Pool;

const pool = new Pool({
    host:'localhost',            
    user:'postgres' ,               
    password:'Password',   
    database:'profiles_db',
    port: 5432   
                
});




module.exports = pool;