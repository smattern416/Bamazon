var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3307,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_DB"
});

connection.connect(function(err){
    if(err){
      console.log('Error connecting to Db');
      return;
    }
    console.log('Connection established');
  
  
  prompt.start();

  prompt.get(["id", "howMany"], function (err, result) {
	if (err){
	    console.log(err)
	}

	var CustomerPickID = parseInt(result.id);
	var CustomerQuantity = parseInt(result.howMany);

	console.log("id=" + CustomerPickID, "how many=" + CustomerQuantity);
})  