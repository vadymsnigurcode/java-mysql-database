CREATE TABLE IF NOT EXISTS families (id INTEGER PRIMARY KEY,
                                     reference VARCHAR (32) NOT NULL,
    name TEXT NOT NULL,
    unite VARCHAR, article_id INTEGER,
    FOREIGN KEY (article_id) REFERENCES articles (id));


CREATE TABLE IF NOT EXISTS articles (id INTEGER PRIMARY KEY,
                                     reference VARCHAR (32) NOT NULL,
    name TEXT NOT NULL,
    quantity REAL, unite VARCHAR, purchased INTEGER, reserved INTEGER, sold INTEGER, available INTEGER, minimum INTEGER, family_id INTEGER,
    FOREIGN KEY (family_id) REFERENCES families (id));