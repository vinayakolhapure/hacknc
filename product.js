var connection = require('./sql');

function Product() {

    this.get_by_merchantId = function(merchant_id,res) {
	console.log(merchant_id);
    connection.acquire(function(err, con) {
      con.query('select * from product where merchant_id = ?',[merchant_id],function(err, result) {
        res.send(result);
		con.release();
		});
	});
	};
	
	
	this.get_by_coordinates = function(lat,lng,res) {
	console.log(lat+ ' ' + lng);
    connection.acquire(function(err, con) {
      con.query('select * from product where lat=?',[lat],function(err, result) {
        res.send(result);
		con.release();
		});
	});
	};
}
module.exports = new Product();


