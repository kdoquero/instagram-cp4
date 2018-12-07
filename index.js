const  express = require('express');
const app = express();
var cookieParser = require('cookie-parser')
var bodyParser = require("body-parser");
var http = require('http');
if (process.env.NODE_ENV !== 'production') {
    require('dotenv').load();
  }
let models = require("./models");
var router = require('./router');

app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use('/',router)

var httpServer = http.createServer(app)
httpServer.listen(3000,function (params) {
    console.log("start server" );
    
})
// app.listen(3000, function (params) {
//     console.log("test");
    
    
// })