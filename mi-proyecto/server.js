const http = require('http');
const port = process.env.PORT || 3000;


const requestHandler = (req, res) => {
res.writeHead(200, { 'Content-Type': 'application/json' });
res.end(JSON.stringify({ message: 'Hola mundo desde mi-proyecto' }));
};


const server = http.createServer(requestHandler);


server.listen(port, () => {
console.log(`Servidor escuchando en http://localhost:${port}`);
});


module.exports = server;