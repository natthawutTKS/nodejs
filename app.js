const http = require("http");
const { v4: uuidv4 } = require("uuid");

const port = 3000;

const server = http.createServer((req, res) => {
  const transactionId = uuidv4();
  const userAgent = req.headers["user-agent"];

  let value = {
    transactionId,
    remoteAddr: req.connection.remoteAddress,
    "User-Agent": userAgent,
  };

  console.log("Request received", JSON.stringify(value));

  const podName = process.env.POD_NAME || "Unset";

  res.writeHead(200, { "Content-Type": "text/html" });
  res.write(`
        <html>
            <head></head>
            <body>
                <h1>This is a web template !!!</h1>
                <p>Transaction id: ${transactionId}</p>
                <p>Your request is processed by pod: ${podName}</p>
                <footer><p><i>Edit this file at app.js</i></p></footer>
            </body>
        </html>
    `);
  res.end();
});

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
