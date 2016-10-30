var connection = require('./sql');
var jwt = require('jsonwebtoken');
var cryptojs = require('crypto-js');

function User() {

    this.UserLogin = function (req, res) {
        connection.acquire(function (err, con) {
            var sql = con.query('SELECT * FROM user WHERE user_name = ? AND password = SHA1(?)', [req.user_name, req.password], function (err, result) {
                console.log('UserLogin : ' + sql.sql);
                if (err) {
                    console.error(err);
                    res.status(400).send({'status': 'Failed to get user with the provided details'});
                } else if (result.length != 0) {
					try {
						var stringData = JSON.stringify(result[0]);
                        var encryptedData = cryptojs.AES.encrypt(stringData, 'abc123!@#').toString();
                        var token = jwt.sign({
                        token: encryptedData
                        }, 'qwerty098');
                        if (token)
                            res.header('Auth', token).status(200).send({
                                        'status': 'Successfully logged in',
                                        'token': token
                            });
                        else
                           res.status(400).send();
					}	catch (err) {
                        console.log(err);
                        res.status(400).send();
                    }
				}					
			});		
		});	
	};			
}
module.exports = new User();


