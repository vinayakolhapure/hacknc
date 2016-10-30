var mysql = require('mysql');

function Connection() {
    this.pool = null;

    /*this.init = function() {
        this.pool = mysql.createPool({
            connectionLimit: 10,
            host: 'localhost',
			port:3310,
            user: 'root',
            password: 'root',
            database: 'hacknc'
        });
    };*/
	this.init = function() {
        this.pool = mysql.createPool({
            connectionLimit: 10,
            host: '127.3.14.2',
			port:3306,
            user: 'adminuHuyB91',
            password: 'u-NgqK8MjdM-',
            database: 'hacknc'
        });
    };

    this.acquire = function(callback) {
        this.pool.getConnection(function(err, connection) {
            callback(err, connection);
        });
    };
}

module.exports = new Connection();


