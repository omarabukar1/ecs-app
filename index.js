const express = require('express');
const app = express();

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.json({ message: 'hello from ecs app ' });
  });
  
app.get('/health', (req, res) => {
  res.send('ok');
});

app.listen(port, '0.0.0.0', () => {
    console.log(`server running on port ${port}`);
  });
  
