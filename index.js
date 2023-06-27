const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;


//export MY_API_TOKEN=op://JasonDev/3znm37dbsfxej4kzhh4cg34qye/nodejs
const envvariable = process.env.MY_API_TOKEN

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
//  res.end('Hello World!');
  res.end(envvariable);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

/* 

Run without calling op cli:

node index.js



Run with calling op cli:

op run -- node index.js

*/