"use strict";

module.exports = function (sequelize, DataTypes) {
  const Cart = sequelize.define(
    "Cart",
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
      quantity: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1
      },
      price: {
        type: DataTypes.DECIMAL,
        allowNull: false,
      },
    },
    {
      freezeTableName: true,
    }
  );
  Cart.associate = function (models) {
    Cart.belongsToMany(models.Book, { through: "Cartbook" });
    Cart.hasOne(models.Checkout);
  };

  return Cart;
};