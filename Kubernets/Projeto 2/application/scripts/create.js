const Sequelize = require('sequelize')

// Load model

const modelTable = require('./table')

async function createData(data){
    const dataArray = {
        name:data.name,
        email:data.email,
        comment:data.comment,
    }

    await modelTable.create(dataArray)
}

module.exports = createData;