const express = require('express')
const bodyParser = require('body-parser')
const path = require('path');
var cors = require('cors')
const app = express()
const port = 3001
const db = require('./queries')

// Middleware to handle errors
app.use((err, req, res, next) => {
  console.error('Error occurred:', err);
  res.status(500).json({ error: 'Something went wrong' });
});

// Global error handler for unhandled rejections
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection at:', promise, 'reason:', reason);
  // You might want to log the error or take other actions here
});

// Global error handler for uncaught exceptions
process.on('uncaughtException', (err) => {
  console.error('Uncaught Exception:', err);
  // You might want to log the error or take other actions here

  // Gracefully exit the process (optional)
  // process.exit(1);
});

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

app.get('/subcategory', db.getSubcategory)

app.get('/product', db.getProduct)

app.get('/product/:id', (req, res) => {
  db.getProductById(req, res)
})

app.get('/category/:id', (req, res) => {
  db.getCategoryById(req, res)
})

app.get('/productbyquery', (req, res) => {
  db.getProductByCategoryId(req, res)
})