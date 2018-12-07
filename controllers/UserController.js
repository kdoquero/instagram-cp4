'use strict';
const bcrypt = require('bcrypt');
let models = require("../models");
const saltRounds = process.env.SALT_ROUND
//const salt = process.env.BCRYPT_SALT
/**
 * Controller responsible of the user
 */
class UserController {
    /**
     * List all users
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static getAll(req, res) {
        models.users.findAll().then(function (users) {
            res.status(200).send(users)
        })

    }
    /**
     * retrieve one user by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static getById(req, res) {
        models.users.findByPk(req.params.id).then(user => {
            res.status(200).send(user)
        })
    }

    /**
     * register a new user
     * @param {incomingMessage } req 
     * @param {serverResponse} res 
     */
    static register(req, res) {


        const username = req.body.username;
        const password = req.body.password;
        const email = req.body.email;
        console.log(password);
       
        bcrypt.hash(password, parseInt(saltRounds), function (err, hash) {
            models.users.findOne({
                where: {
                    email: email
                }
            }).then(user => {
                if (user) {
                    res.status(500).json({
                        message: "email already exist",
                    })
                } else {
                    models.users.create(
                        {
                            username: username,
                            password: hash,
                            email: email
                        }
                    ).then(user=> {
                        res.status(200).send({userId : user.id});
                    }).catch(error=>{
                        res.status(500).send({error : "cannot add user"});

                    })
                }
                
            }).catch(error=>{
                res.status(500).send({error : "cannot verify user"});

            })
            
            
        })


    }
    /**
     * replace all the data of one user by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static replace(req, res) {
        res.status(200).send({ endpoint: "UserController.replace" })
    }
    /**
     * insert a new data in the user object
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static patch(req, res) {
        res.status(200).send({ endpoint: "UserController.patch" })
    }
    /**
     * delete one user by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static delete(req, res) {
        res.status(200).send({ endpoint: "UserController.delete" })
    }

}

module.exports = UserController;

//{attributes: { exclude: ['password']},include:[models.posts]} 
