const express = require("express");
const socket = require("socket.io");
const sqlite3 = require("sqlite3").verbose();

const PORT = 5000;
const app = express();
const server = app.listen(PORT, function () {
  console.log(`Listening on port ${PORT}`);
  console.log(`http://localhost:${PORT}`);
});

app.use(express.static("public"));

app.get("/", function (req, res) {
  res.render("index", {});
});

// Socket setup
const io = socket(server);

io.on("connection", function (socket) {
  console.log("Made socket connection");

  socket.on("values", (data) => {
    console.log(data);
    searchAndEmit(data);
  });
});

let db = new sqlite3.Database("./cos_val.db", sqlite3.OPEN_READONLY, (err) => {
  if (err) {
    console.error(err.message);
  }
  console.log("Connected to the the database.");
});

const searchAndEmit = (number) => {
  let query = `SELECT value FROM Cos WHERE key = ${number}`;

  db.all(query, [], (err, rows) => {
    if (err) {
      throw err;
    }
    rows.forEach((row) => {
      console.log(row.value);
      sqVal= Math.pow(row.value, 2)
      var appendData = {
        number: number,
        value: sqVal,
      };

      let sentData = JSON.stringify(appendData);
      io.emit("values", sentData);
    });
  });
};
