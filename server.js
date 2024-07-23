const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 8000;

app.use(bodyParser.json());
app.use(cors());

app.put('/update-username', (req, res) => {
  const { username } = req.body;
  console.log(`Username updated to: ${username}`);
  res.status(200).send({ message: 'Username updated successfully' });
});

app.put('/update-email', (req, res) => {
  const { email } = req.body;
  console.log(`Email updated to: ${email}`);
  res.status(200).send({ message: 'Email updated successfully' });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
