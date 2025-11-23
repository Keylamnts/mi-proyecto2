const request = require('http').request;
const server = require('../server');


afterAll(done => {
server.close(done);
});


test('GET / devuelve 200 y message', done => {
const options = {
hostname: 'localhost',
port: 3000,
path: '/',
method: 'GET'
};


const req = request(options, res => {
expect(res.statusCode).toBe(200);


let data = '';
res.on('data', chunk => (data += chunk));
res.on('end', () => {
const json = JSON.parse(data);
expect(json.message).toBeDefined();
done();
});
});


req.on('error', err => done(err));
req.end();
});