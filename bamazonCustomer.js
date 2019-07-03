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

connection.connect(function (err) {
    if (err) {
        console.log("Error connecting to Database");
        return;
    }
    console.log("Connection established");


    prompt.start();

    prompt.get(["id", "howMany"], function (err, result) {
        if (err) {
            console.log(err)
        }

        var CustomerPickID = parseInt(result.id);
        var CustomerQuantity = parseInt(result.howMany);

        console.log("id = " + CustomerPickID, "how many = " + CustomerQuantity);

        function selectID() {
            connection.query("SELECT * FROM Products WHERE item_id =" + CustomerPickID, function (err, res) {
                if (err) throw err;
                console.log(res);
                var want = CustomerQuantity;
                var have = res[0].stock_quantity;
                var pricePerItem = res[0].price;
                newQuantity = have - want;
                if (newQuantity >= 0) {
                    console.log("Ok! We have enough " + res[0].product_name + " in stock.");
                    var totalCost = pricePerItem * CustomerQuantity;
                    console.log("You owe $" + totalCost);
                    connection.query("UPDATE Products SET stock_quantity = " + newQuantity + " WHERE item_id = " + CustomerPickID, function (err, res) {
                        if (err) throw err;
                        connection.query("SELECT item_id, product_name, department_name, price, stock_quantity FROM products WHERE item_id =" + CustomerPickID, function (err, res) {
                            console.log(res);
                        });
                    });
                }
                else if (want > have && have != 0) {
                    console.log("Insufficient quantity. We only have " + have + " in stock.");
                }
                else {
                    return false
                }
            });
        };
        selectID();
    });
}) 