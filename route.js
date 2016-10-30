var product = require('./product');
var user = require('./user');

module.exports = {
    configure: function(app) {
        app.get('/products', function(req, res) {
		product.get_by_merchantId(req.query.merchant_id,res);
    });
	
		app.get('/latlng', function(req, res) {
		product.get_by_coordinates(req.query.lat,req.query.lng,res);
    });
	
		app.post('/Authenticate', function (req, res){
            user.UserLogin(req.body, res);
        });
    }
};
