const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('book routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('should return a list of books', async () => {
    const res = await request(app).get('/books');
    expect(res.body.length).toEqual(10);
  });

  it('should return a book with list of authors', async () => {
    const res = await request(app).get('/books/1');
    expect(res.body).toEqual({
      title: expect.any(String),
      release: expect.any(Number),
      authors: expect.any(Array),
    });
  });

  afterAll(() => {
    pool.end();
  });
});
