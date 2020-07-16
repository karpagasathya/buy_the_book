"use strict";

module.exports = function (sequelize, DataTypes) {
  const Author = sequelize.define(
    "Author",
    {
      id: {
        // Sequelize module has INTEGER Data_Type.
        type: DataTypes.INTEGER,
        // To increment user_id automatically.
        autoIncrement: true,
        // user_id can not be null.
        allowNull: false,
        // For uniquely identify user.
        primaryKey: true,
      },
      firstName: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      lastName: {
        type: DataTypes.STRING,
        allowNull: false,
      },
    },
    {
      freezeTableName: true,
    }
  );
  Author.associate = function (models) {
    Author.hasMany(models.Book);
  };

  return Author;
};
