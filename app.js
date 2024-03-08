const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
console.log('hello i am running!')
  res.send(`Hello nodejs-docker! environment type is${process.env.TYPE}`)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})