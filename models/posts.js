'use strict';
module.exports = (sequelize, DataTypes) => {
  
  const posts = sequelize.define('posts', {
    title: DataTypes.STRING,
    desc: DataTypes.STRING,
    userId: DataTypes.INTEGER,
    picture: DataTypes.STRING
  }, {});
  posts.associate = function(models) {
    posts.belongsTo(models.users)
    // associations can be defined here
  };
  return posts;
};