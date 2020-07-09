
module.exports = function (sequelize, DataTypes) {
    var Book = sequelize.define("books", {
        bookId: {
            // Sequelize module has INTEGER Data_Type. 
            type: DataTypes.INTEGER,
            // To increment user_id automatically. 
            autoIncrement: true,
            // user_id can not be null. 
            allowNull: false,
            // For uniquely identify user. 
            primaryKey: true
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false
        },
        genre: {
            type: DataTypes.STRING,
            allowNull: false
        },
        pubYear: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        price: {
            type: DataTypes.DECIMAL,
            allowNull: false
        },
        inventory: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        bookDescription: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    });
    Book.associate = function (models) {
        Book.belongsTo(models.Author);
        Book.belongsToMany(models.Cart, { through: 'CartBook' });
    };


    return Book;
};