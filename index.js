const  express = require('express');
const app = express();
let models = require("./models");
app.get('/',function (req,res) {
    models.users.findAll( { exclude: ['password'],include:[{model :models.posts}]}).then(function (users) {
        res.send(users)
    })
    
})

app.listen(3000, function (params) {
    console.log("test");
    
    
})