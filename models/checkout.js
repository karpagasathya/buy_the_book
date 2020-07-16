"use strict";

module.exports = function (sequelize, DataTypes) {
  const Checkout = sequelize.define(
    "Checkout",
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
      addressLine1: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      addressLine2: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      city: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      state: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      zipCode: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      subTotal: {
        type: DataTypes.DECIMAL,
        allowNull: false,
      },
    },
    {
      freezeTableName: true,
    }
  );
  Checkout.associate = function (models) {
    Checkout.belongsTo(models.Cart);
  };

  return Checkout;
};
