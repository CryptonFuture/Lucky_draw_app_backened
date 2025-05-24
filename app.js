const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const dotenv = require("dotenv");
const exfileRouter = require('./routers/index')

const app = express();

app.use(bodyParser.json({ limit: "1gb" }));
app.use(bodyParser.urlencoded({ extended: false, limit: "1gb" }));
app.use(cors());

app.use('/api/v1', exfileRouter)

// app.get("/", () => {
//   console.log("Service is working");
// });

module.exports = app;
