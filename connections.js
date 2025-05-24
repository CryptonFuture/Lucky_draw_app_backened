const express = require('express');
const sql = require("mssql");
const app = express();

/*-------------------add details of sqlConfig-----------------*/

const config = {
  user: "sa",
  password: "S@Ntex.d16",
  server: "115.167.76.33",
  database: "lucky_draw",
  options: {
    trustServerCertificate: true
  }
};

/******************************************************************/

    try {
         sql.connect(config);
        console.log("DB Connected");
    } catch(err)
    {
        console.log(err);
    }


module.exports = config

