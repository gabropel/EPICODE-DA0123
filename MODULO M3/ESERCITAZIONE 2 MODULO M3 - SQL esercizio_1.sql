-- CREATE DATABASE esercizi_1;

USE esercizi_1;

DROP TABLE if exists Automobile;

CREATE TABLE Automobile (Marca VARCHAR(50),
							Modello VARCHAR(35),
								Targa VARCHAR(7),
									Cilindrata INT,
										Colore VARCHAR(50));
                        
INSERT INTO Automobile VALUES ("Ferrari", 488, "AA123BB", 3902, "Rosso"),
                              ("Mercedes", "Classe C", "CC456DD", 2998, "Grigio"),
                              ("i8", "EE789FF", "BMW", 1498, "Blu scuro"),
                              ("Fiat", NULL, NULL, 1233, NULL);
                              
DROP TABLE if exists Lavoratore;
                              
CREATE TABLE Lavoratore(Nome VARCHAR(25),
							Cognome VARCHAR(40),
								Matricola VARCHAR(16),
									Stipendio INT);
                                    
INSERT INTO Lavoratore VALUES ("Paolo", "Verde", "A01234", 1865),
                              ("Stefano", "Neri", "B05678", 2000),
                              ("Francesco", "Azzurra", "C09012", 2500),
                              ("Luca", "Rosso", "B091234", 2100);
                              
SELECT * FROM Lavoratore WHERE Cognome="Verde";

SELECT * FROM Lavoratore WHERE Cognome LIKE "%e%";

SELECT Nome, Cognome, Stipendio FROM Lavoratore WHERE Cognome LIKE "A%";

SELECT * FROM Lavoratore WHERE Cognome LIKE "%o" AND Cognome LIKE "%e%";

SELECT * FROM Lavoratore WHERE Stipendio BETWEEN 1800 AND 2000;

SELECT * FROM Lavoratore WHERE Stipendio BETWEEN 2000 AND 2500 AND Cognome LIKE "%i";

SELECT Nome, Cognome FROM Lavoratore WHERE Stipendio BETWEEN 1900 AND 2400 ORDER BY Stipendio DESC;

SELECT Nome, Cognome FROM Lavoratore WHERE Stipendio BETWEEN 2000 AND 2500 ORDER BY Stipendio DESC, Nome ASC;

UPDATE Automobile SET Modello="500L", Targa="XX123YY", Colore="Bianco" WHERE Marca="Fiat";

DELETE FROM Automobile WHERE Marca="F%";