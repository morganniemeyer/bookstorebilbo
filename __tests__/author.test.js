const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const { request } = require('express');
const app = require('../lib/app');

describe('author routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('should return a list of authors', async () => {
    const res = await request(app).get('/authors');
    expect(res.body.length).toEqual(5);
  });
  afterAll(() => {
    pool.end();
  });
});
