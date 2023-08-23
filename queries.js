const { request } = require('express')
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
    const query = "select product.id_product, product.image, product.product_name, product.product_subname, product.price, product.product_desc, product.size, product.color, product.rating, product.sku, product.additional_information,"+
        "subcategory.image as subcategory_image, subcategory.subcategory_name, category.category_name, category.image as category_image from product inner join subcategory on product.id_subcategory = subcategory.id_subcategory "+
        "inner join category on category.id_category = subcategory.id_category " +
        "where product.id_product ="+request.params.id
    connection.query(query, (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results[0])
    })
}

const getCategoryById = (request, response) => {
    const query = "SELECT * FROM category where id_category ="+request.params.id
    connection.query(query, (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results[0])
    })
}

const getProductByCategoryId = (request, response) => {
    const query = "select product.id_product, product.image, product.product_name, product.product_subname, product.price, product.product_desc, product.size, product.color, product.rating, product.sku, product.additional_information,"+
        "subcategory.image as subcategory_image, subcategory.subcategory_name, category.category_name, category.image as category_image from product inner join subcategory on product.id_subcategory = subcategory.id_subcategory "+
        "inner join category on category.id_category = subcategory.id_category " +
        "where category.id_category ="+request.query.category_id
    connection.query(query, (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results)
    })
}


module.exports = {
    getCategory,
    getProduct,
    getProductById,
    getCategoryById,
    getProductByCategoryId
}