CREATE TABLE IF NOT EXISTS books (Id INTEGER PRIMARY KEY,
                                  title TEXT NOT NULL,
                                  count_page INTEGER NOT NULL CHECK (count_page > 0), price REAL CHECK (price > 0));


CREATE TABLE IF NOT EXISTS auth (id INTEGER PRIMARY KEY,
                                 name TEXT NOT NULL,
                                 age INTEGER CHECK (age > 16));


CREATE TABLE IF NOT EXISTS auth_book (auth_id INTEGER NOT NULL,
                                      books_id INTEGER NOT NULL,
                                      FOREIGN KEY (auth_id) REFERENCES auth (id)
    FOREIGN KEY (books_id) REFERENCES books(id));