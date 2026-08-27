/* Part 1 */
CREATE TABLE NOMS(
ID INTEGER PRIMARY KEY,
noms TEXT NOT NULL
);



INSERT INTO  NOMS (ID,noms)
VALUES
	(1, 'Jason'),
	(2, 'John'),
	(3, 'Elisabeth'),
	(4, 'Frank');

	SELECT * FROM NOMS

/* Part 2 * /

CREATE TABLE Entraineur(
ID INTEGER PRIMARY KEY,
Name VARCHAR(10),
Sport VARCHAR(10), 
);

INSERT INTO  Entraineur(ID,Name,Sport)
VALUES
	(1, 'Jason','Football'),
	(2, 'John','Basketball'),
	(3, 'Elisabeth','Hockey'),
	(4, 'Frank','Swimming');

	SELECT * FROM Entraineur

