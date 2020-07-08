module.exports = function(sequelize, DataTypes) {
    var Checkout = sequelize.define("checkout", {
        checkoutID:{ 
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
        },
        shipping:{
            type: DataTypes.DECIMAL,
            allowNull:false ,
            defaultValue: '0'
        }

    });
    Checkout.associate = function(models) {
        // We're saying that a Book should belong to an Author
        // A Book can't be created without an Author due to the foreign key constraint
        Checkout.belongsTo(models.Cart, {
          foreignKey: {
            allowNull: false
          }
        });
      };
    
    return Checkout;
  };