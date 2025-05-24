require("dotenv").config();

const app = require("./app");
const { port } = require("./config");
// require('./connections')

app.listen(port, () => {
  console.log(`listening on port: ${port}`);
});
