var express    = require('express');        // call express
var app        = express();                 // define our app using express
var bodyParser = require('body-parser');

// configure app to use bodyParser()
// this will let us get the data from a POST
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var connection = require('./sql');
var routes = require('./route');

connection.init();
routes.configure(app);

var PORT = process.env.PORT || 8090;

app.use(express.static(__dirname + '/assests'));

var server = app.listen(PORT, function() {
    console.log('Server listening on port ' + PORT);
});