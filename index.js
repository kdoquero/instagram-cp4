const  express = require('express');
const app = express();

app.get('/',function (req,res) {
    res.send('hello world test!')
})

app.listen(3000, function (params) {
    console.log("test");
    
    
})