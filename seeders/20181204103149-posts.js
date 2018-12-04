'use strict';
let models = require("../models");
var randomSentence = require('random-sentence');
const bcrypt = require('bcrypt');

module.exports = {
  up: (queryInterface, Sequelize) => {
    let posts = [];
    return models.users.findAll().then(function (users) {
      
      for (let index = 0; index < users.length; index++) {
        const i = 200 + users[index].id;
        const picture = `https://picsum.photos/${200 + i}`;
        posts.push({
          title: randomSentence({ min: 4, max: 9 }),
          desc: randomSentence(),
          userId: users[index].id,
          picture: picture

        })
        

      }
      return queryInterface.bulkInsert('posts', posts, {})
    });



  },

  down: (queryInterface, Sequelize) => {
   
      return queryInterface.bulkDelete('posts', null, {});
  
  }
};
