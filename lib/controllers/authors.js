const { Router } = require('express');
const { Author, AuthorWBook } = require('../models/authors');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const author = await AuthorWBook.getById(req.params.id);
    res.json(author);
  })
  .get('/', async (req, res) => {
    const authors = await Author.getAll();
    res.json(authors);
  });
