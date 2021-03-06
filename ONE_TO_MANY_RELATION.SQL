CREATE TABLE IF NOT EXISTS customers (customer_id INT AUTO_INCREMENT PRIMARY KEY,
                                      customer_name VARCHAR (100));


CREATE TABLE IF NOT EXISTS orders (order_id INT AUTO_INCREMENT PRIMARY KEY,
                                   customer_id INT, amount DOUBLE,
                                   FOREIGN KEY (customer_id) REFERENCES customers (customer_id));