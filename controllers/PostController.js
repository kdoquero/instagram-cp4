'use strict';
let models = require("../models");
/**
 * Controller responsible of the post
 */
class PostController {
    /**
     * retrieve all posts
     * @param {incommingMessage} req 
     * @param {incommingMessage} res 
     */
    static getAll(req, res) {
        models.posts.findAll({ attributes: { exclude: ['password'] }, include: [models.users] }).then(function (post) {
            res.status(200).json(post)
        }).catch(error => {
            res.status(500).json({
                message: "unable to get post",
                error: error
            })
        })

    }
    /**
     * retrieve one post by the id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static getById(req, res) {
        models.posts.findByPk(req.params.id).then(post => {
            res.status(200).send(post)
        })
    }
    /**
     * add one post 
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static addPost(req, res) {
        const title = req.body.title;
        const desc = req.body.desc;
        const picture = req.body.picture;
        const userId = req.body.userId;

        models.posts.create(
            {
                title: title,
                desc: desc,
                picture: picture,
                userId: userId
            }
        ).then(post => {
            res.status(200).send(post);
        }).catch(error => {
            res.status(500).json({
                message: "unable to create post",
                error: error
            })
        })
    }
    /**
     * replace one post by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static replace(req, res) {
        models.posts.findOne({
            where: {
                id: req.params.id
            }
        }).then(post=>{
            if (post.userId === user.id) {
                models.posts.update(req.body, {
                    where: {
                        id: req.params.id
                    }
                }).then(post => {
                    res.status(200).send(post)
                }).catch(error => {
                    res.status(500).json({
                        message: "unable to put post",
                        error: error
                    })
                })
            } else {
                res.status(403).send("Not authorized")
            }

        })
    }
    /**
     * change on property of one post by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static patch(req, res) {
        models.posts.findOne({
            where: {
                id: req.params.id
            }
        }).then(post=>{
            if (post.userId === user.id) {
                models.posts.update(req.body, {
                    where: {
                        id: req.params.id
                    }
                }).then(post => {
                    res.status(200).send(post)
                }).catch(error => {
                    res.status(500).json({
                        message: "unable to patch post",
                        error: error
                    })
                })
            } else {
                res.status(403).send("Not authorized")
            }

        })
        

    }
    /**
     * delete one post by his id
     * @param {incommingMessage} req 
     * @param {serverResponse} res 
     */
    static delete(req, res) {
        models.posts.findOne({
            where: {
                id: req.params.id
            }
        }).then(post => {
            if (post.userId === req.decoded.id) {
                models.posts.destroy({
                    where: {
                        id: req.params.id
                    }
                }).then(post => {
                    res.status(200).send("post deleted")
                }).catch(error => {
                    res.status(500).json({
                        message: "unable to delete post",
                        error: error
                    })
                })
            } else {
                res.status(403).send("Not authorized")

            }
        }).catch(error=>{
            res.status(500).send("nothing found")

        })


    }

}

module.exports = PostController;

//{attributes: { exclude: ['desc']},include:[models.posts]} 
