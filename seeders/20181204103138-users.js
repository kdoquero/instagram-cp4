'use strict';
const bcrypt = require('bcrypt');

module.exports = {
  up: (queryInterface, Sequelize) => {
    let users = [];
    for (let index = 0; index < 15; index++) {
      users.push({
        email: `johnDoe${index+1}@mail.com`,
        password: bcrypt.hashSync(`pass${index+1}`, 12),
        username:`jon${index+1}`
      })
      
    }
      return queryInterface.bulkInsert('users', users, {});
  },

  down: (queryInterface, Sequelize) => {
    
      return queryInterface.bulkDelete('users', null, {});
    
  }
};
