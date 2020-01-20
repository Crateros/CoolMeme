import express = require('express')

const app: express.Application = express();
const port = 3000;

app.get('/', (request, response) => {
  response.send('Hello from Server Land!');
});

app.listen(port, () => console.log('I am alive! Woohoo! Application listening on port 3000...'));
