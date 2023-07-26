const express = require('express')
const bodyParser = require('body-parser')
const path = require('path');
var cors = require('cors')
const app = express()
const port = 3001
const db = require('./queries')

app.use(cors())

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

// Serve static files from the 'public' folder
app.use(express.static('public'));

app.get('/', (request, response) => {
  response.json({ info: 'Node.js, Express, and Postgres API' })
})

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})

app.get('/category', db.getCategory)

app.get('/product', db.getProduct)

app.get('/product/:id', (req, res) => {
  db.getProductById(req, res)
})