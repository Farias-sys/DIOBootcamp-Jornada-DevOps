const express = require('express')
const app = express()
port = 3000

const CreateData = require('./scripts/create')

app.post('/api/create', async(req, res) => {res.status(200).send(await CreateData(req.body))})

server.listen(port)