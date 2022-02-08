CREATE TABLE IF NOT EXISTS Person (Pk_Person_Id INT AUTO_INCREMENT PRIMARY KEY,
                                   Name VARCHAR(255),
    EmailId VARCHAR(255),
    FOREIGN KEY(Pk_Person_Id) REFERENCES PassportDetails(Fk_Person_Id));


CREATE TABLE PassportDetails (Pk_Passport_Id INT PRIMARY KEY,
                              Passport_Number VARCHAR(255), --Fk_Person_Id INT UNIQUE,
                              Fk_Person_Id INT,
                              FOREIGN KEY(Fk_Person_Id) REFERENCES Person(Pk_Person_Id));


INSERT INTO Person
VALUES ('Niraj','v.a@emails.com');


INSERT INTO Person
VALUES ('Vishwanath','v.v@emails.com');


INSERT INTO Person
VALUES ('Chetan','c.v@emails.com');

GO
INSERT INTO PassportDetails
VALUES (101, 'C3031R33', 1);


INSERT INTO PassportDetails
VALUES (102, 'VRDK5695', 2);


INSERT INTO PassportDetails
VALUES (103, 'A4DEK33D', 3);

GO
SELECT *
FROM Person
SELECT *
FROM PassportDetails;