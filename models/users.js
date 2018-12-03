'use strict';
module.exports = (sequelize, DataTypes) => {
  const users = sequelize.define('users', {
    email: DataTypes.STRING,
    username: DataTypes.STRING,
    password: DataTypes.STRING
  }, {
    indexes: [{unique:true, fields:['email','username']}]
  });
  users.associate = function(models) {
    users.hasMany(models.posts,{foreignKey:"userId",foreignKeyConstraint:true})
  };
  return users;
};