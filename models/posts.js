'use strict';
module.exports = (sequelize, DataTypes) => {
  
  const posts = sequelize.define('posts', {

    title: {
    type: DataTypes.STRING,
    allowNull: false,
    
  },
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