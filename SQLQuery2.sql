/*
USE bdd1;
Go
*/


/*Table client*/
CREATE TABLE CLIENT(
ID INTEGER PRIMARY KEY,
prenom VARCHAR(10),
nom VARCHAR(10),
courriel VARCHAR(40),
);

INSERT INTO  CLIENT(ID,prenom,nom,courriel)
VALUES
	(101, 'Sally', 'Thomas', 'sally.thomas@acme.com'),
	(102, 'George', 'Bailey', 'gbailey@foobar.com'),
	(103, 'Edward', 'Walker', 'ed@walker.com'),
	(104, 'Anne', 'Kretchmar', 'annek@noanswer.org');

	SELECT * FROM CLIENT

/*Table Commande*/
CREATE TABLE commandes(
cmd_No INTEGER PRIMARY KEY,
cmd_Date DATE,
client INT FOREIGN KEY REFERENCES CLIENT(ID),
QTY INT,
Prod_ID INT FOREIGN KEY REFERENCES PRODUITS(ID),
);

/*Update the column name from ProdID to Prod_ID column
EXEC sp_rename 'commandes.ProdID','Prod_ID', 'COLUMN'; */

INSERT INTO  commandes (cmd_No, cmd_Date, client, QTY, Prod_ID)
VALUES
	(1, '2016-02-02', '101', '1', '102'),
	(2, '2018-03-12', '102', '2', '105'),
	(3, '2016-02-02', '102', '2', '106'),
	(4, '2016-02-02', '103', '1', '107');

	SELECT * FROM commandes;

/*Table Produits*/
CREATE TABLE PRODUITS(
ID INTEGER PRIMARY KEY,
Nom VARCHAR(60),
Description VARCHAR(100),
Poids float(10),
);

/*Update from 'Description VARCHAR(50),' to 'Description VARCHAR(100),'
ALTER TABLE Produits
ALTER COLUMN Description VARCHAR(100) NOT NULL; 
*/

INSERT INTO  PRODUITS(ID, Nom, Description, Poids)
VALUES
	(101,'Scooter', 'Small 2-wheel scooter','3.14'),
	(102,'car battery', '12V car battery','8.1'),
	(103,'12-pack Drill Bits', '12-pack of drill bits with sizes ranging from #40 to #3','0.8'),
	(104,'Hammer', '12oz carpenter''s hammer','0.75'),
	(105,'Hammer', '14oz carpenter''s hammer','0.875'),
	(106,'Hammer', '16oz carpenter''s hammer','1'),
	(107,'Rocks', 'Box of assorted rocks','5.3'),
	(108,'Jacket', 'Water resistant black wind breaker','0.1');

	SELECT * FROM PRODUITS;


/*Table inventaire*/
CREATE TABLE invent(
ID INT IDENTITY(1,1) PRIMARY KEY,
Prod_ID INT FOREIGN KEY REFERENCES PRODUITS(ID),
QTY INT
);

INSERT INTO  invent(Prod_ID, QTY)
VALUES
	(101,10),
	(102,20),
	(103,30),
	(104,30),
	(105,30),
	(106,30),
	(107,30),
	(108,30);


	SELECT * FROM invent;
