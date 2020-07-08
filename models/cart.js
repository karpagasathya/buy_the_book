module.exports = function(sequelize, DataTypes) {
    var Cart = sequelize.define("itemOrder", {
       orderID:{ 
            // Sequelize module has INTEGER Data_Type. 
            type:DataTypes.INTEGER, 
            // To increment user_id automatically. 
            autoIncrement:true, 
            // user_id can not be null. 
            allowNull:false, 
            // For uniquely identify user. 
            primaryKey:true
        }, 
        quantity:{
          type:DataTypes.INTEGER,
          allowNull:false 
        },
        price:{
            type: DataTypes.DECIMAL,
            allowNull:false 
        }
    });
    Cart.associate = function(models) {
        // We're saying that a Book should belong to an Author
        // A Book can't be created without an Author due to the foreign key constraint
        Cart.belongsTo(models.Book, {
          foreignKey: {
            allowNull: false
          }
        });
      };
    
    return Cart;
  };