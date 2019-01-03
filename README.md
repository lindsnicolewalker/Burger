# Burger
Check it out [here](https://secret-beach-37555.herokuapp.com/)  
![Alt Text](https://media.giphy.com/media/4ZaY2DxKxUDRILkOKr/giphy.gif)


## Description
Burger! is a restaurant app that lets users input the names of burgers they'd like to eat.
Whenever a user submits a burger's name, my app will display the burger on the designated section of the page -- waiting to be devoured.
Each burger in the waiting area also has a Devour! button. When the user clicks it, the burger will move to the appropriate side of the page, waiting to be made, next to a Make! button.
My app will store every burger in a database, whether devoured or not.

## Demo
![Alt Text](https://media.giphy.com/media/OPf7sFAj7xPDl1QDLO/giphy.gif)

## Technology
MySQL, Node, Express, Handlebars and a homemade ORM 

# Code

## Making a connection to JAWSDB  
	var connection;

	if (process.env.JAWSDB_URL) {
    connection = mysql.createConnection(process.env.JAWSDB_URL);

	} else {
    connection = mysql.createConnection({
        host: "localhost",
        port: 3306,
        user: "root",
        password: "password",
        database: "burgers_db"
      });
	}

## Homemade ORM
	var connection = require("../config/connection.js");
	update: function(table, objColVals, condition, cb) {
    var queryString = "UPDATE " + table;

    queryString += " SET ";
    queryString += objToSql(objColVals);
    queryString += " WHERE ";
    queryString += condition;

    console.log(queryString);
    connection.query(queryString, function(err, result) {
      if (err) {
        throw err;
      }

      cb(result);
    });
  	}
	};

	module.exports = orm;


## Installation

To install the application follow the instructions below in your terminal:  

	git clone git@github.com:lindsnicolewalker/burger.git
	cd burger
	npm install
	
## Using App Locally

To run the application locally and access it in your browser, first set the `PORT` environment variable to the value of your choice. An example is shown below.

	export PORT=8080
	
After the `PORT` environment variable has been set, navigate to your app master directory and then run the Node.js application with the command below.

	node server.js

The application will now be running locally on `PORT`, in this case that is port 8080. You can then access it locally from your browser at the URL `localhost:PORT`by typing into your browser searchbar: `localhost:8080`.


## Author
Lindsey Walker

