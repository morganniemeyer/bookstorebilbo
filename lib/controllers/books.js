const { Router } = require('express');
const { Book, BookWAuthors } = require('../models/books');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const book = await BookWAuthors.getById(req.params.id);
    res.json(book);
  })
  .get('/', async (req, res) => {
    const books = await Book.getAll();
    res.json(books);
  });
