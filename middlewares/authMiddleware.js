
var jwt = require('jsonwebtoken');
function authMiddleware(req, res, next) {

    console.log(req.cookies);
    console.log(req.cookies.access_token);

    var token = req.body.token || req.query.token || req.headers['access_token'] || req.cookies.access_token;
    if (token) {
    
        // verifies secret and checks exp
        jwt.verify(token, process.env.JWT_SECRET, function (err, decoded) {
            if (err) {
                return res.json({ success: false, message: 'Failed to authenticate token.' });
            } else {
                // if everything is good, save to request for use in other routes
                console.log(decoded);
                
                req.decoded = decoded; next();
            }
        });

    } else {

        // if there is no token
        // return an error
        return res.status(403).send({
            success: false,
            message: 'No token provided.'
        });
        
    }
}
    module.exports = authMiddleware