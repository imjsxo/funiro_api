const mysql = require('mysql')
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'furniro_db'
})

const getCategory = (request, response) => {
    connection.query('SELECT * FROM category', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results)
    })
}

const getProduct = (request, response) => {
    connection.query('SELECT * FROM product', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results)
    })
}

const getProductById = (request, response) => {
    connection.query('SELECT * FROM product where id_product ='+request.params.id, (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results)
    })
}


module.exports = {
    getCategory,
    getProduct,
    getProductById
}