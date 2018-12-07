const  express = require('express');
var UserController = require("./controllers/UserController")
var PostController = require("./controllers/PostController");
var AuthController = require("./controllers/AuthController");
var authMiddleware = require('./middlewares/authMiddleware')

var router = express.Router();
router.get('/',function (req,res) {
    res.send("welcome");
})
router.get('/test',function (req,res) {
    console.log('log test');
    
    res.send('test')
})
router.get("/users", UserController.getAll)	
router.get("/users/:id",authMiddleware, UserController.getById)	
router.post("/users", UserController.register)	
router.put("/users/:id",authMiddleware, UserController.replace)	
router.patch("/users/:id",authMiddleware, UserController.patch)	
router.delete("/users/:id",authMiddleware, UserController.delete)	
router.post("/auth/login", AuthController.login)	
router.post("/auth/logout",authMiddleware, AuthController.logout)	
router.get("/posts",authMiddleware, PostController.getAll)	
router.post("/posts",authMiddleware, PostController.addPost)	
router.get("/posts/:id",authMiddleware, PostController.getById)	
router.put("/posts/:id",authMiddleware, PostController.replace)	
router.patch("/posts/:id",authMiddleware, PostController.patch)	
router.delete("/posts/:id",authMiddleware, PostController.delete)	

module.exports = router;