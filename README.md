# Vanilla Ice:icecream:

The contents of this repository is the solution-guide to the "Introduction to PHP" task used to instruct Dufuna CodeCampers 

[![Software License][ico-license]](LICENSE)

 ## Prerequisites
 This solution kit assumes that the scholar has :
- A basic understanding of HTML and Css.
- A basic understanding of PHP 

## :icecream::icecream::icecream:

 In summary You are asked to 
 1) create a Database , 
 2) Create a Product and Brands table in the Database.
 3) Populate your Brands Table
 4) Create a form to upload and ensure all uploaded products belong to an already existing brand.
 5) Show an overview of all your Products 

## Walkthrough :oncoming_automobile:

$data$

- init.sql in the /data directory contains the Queries to Create the Database and Install the required tables and Populate the brands table.  Also notice that there is a foreign key on the Products table that references the id of the brand table. You can read this [refresher](https://www.w3schools.com/sql/sql_foreignkey.asp) on Foreign keys from W3schools.

$public$
For starters the install.php file in this directory when fired,  handles the contents in the aforementioned data/init.sql file. It uses the php's inbuilt function 
A PDO (PHP data objects) connection is created to forge a connection between tthe MySQL database and PHP. The variables and constants needed to make the connection were declared in another file "public/config.php" . We then use require to avoid having to redeclare the variables again in this same file.
`file_get_contents(path/to/file)` is then used to get the contents of the file and then the `exec` function is then used to execute the command to run the queries in data/init.sql.
If the Database is created successfully, we echo a success message.

In fetch.php we get all the brands we previously inserted into the brands table and save them in php's session Object. ( this route is being talked about so we can discuss the session object)

In create.php we display a small form where we use php to populate its select element with the brands from the Session Object.

And when we click submit on the form the product is inserted into the database in the appropriate table.

Overview.php shows some columns form the product table in a table view.
## Contributors

- [John Ohue](https://github.com/JohnItoo)

See [CONTRIBUTING.md](https://github.com/JohnItoo/easy-test-flighting/blob/master/CONTRIBUTING.md)

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
