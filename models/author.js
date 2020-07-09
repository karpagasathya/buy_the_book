module.exports = function (sequelize, DataTypes) {
    var Author = sequelize.define("author", {
        authorId: {
            // Sequelize module has INTEGER Data_Type. 
            type: DataTypes.INTEGER,
            // To increment user_id automatically. 
            autoIncrement: true,
            // user_id can not be null. 
            allowNull: false,
            // For uniquely identify user. 
            primaryKey: true
        },
        first_name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        last_name: {
            type: DataTypes.STRING,
            allowNull: false
        }
    });
    Author.associate = function (models) {
        Author.hasMany(models.Book);
    };

    return Author;
};