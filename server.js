const http = require("http");

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.end("Hello from Node.js inside Docker!");
});

server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
