const Sequelize = require('sequelize')

const database = new Sequelize(process.env.DATABASE_NAME, process.env.LOCAL_DATABASE_USERNAME, process.env.LOCAL_DATABASE_PASSWORD, {
    dialect: 'mysql', 
    host: process.env.DATABASE_HOST,
    port: process.env.DATABASE_PORT 
});

const Table = ("database", {
    id:{
        type: Sequelize.INTEGER,
        autoIncrement: true,
    },
    name:{
        type: Sequelize.STRING,
        allowNull: false,
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    comment: {
        type: Sequelize.STRING, 
        allowNull: true,
    },
    createdAt: {
        field: 'created_at',
        type: Sequelize.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: Sequelize.DATE,
    }
})