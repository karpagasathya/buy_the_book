module.exports = function (sequelize, DataTypes) {
    var Cart = sequelize.define("itemOrder", {
        cartId: {
            // Sequelize module has INTEGER Data_Type. 
            type: DataTypes.INTEGER,
            // To increment user_id automatically. 
            autoIncrement: true,
            // user_id can not be null. 
            allowNull: false,
            // For uniquely identify user. 
            primaryKey: true
        },
        quantity: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        price: {
            type: DataTypes.DECIMAL,
            allowNull: false
        }
    });
    Cart.associate = function (models) {
        Cart.belongsToMany(models.Book, { through: 'CartBook' });
        Cart.hasOne(models.Checkout);
    };

    return Cart;
};