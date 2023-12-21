USE mabdd;

SELECT * FROM Ordinateurs WHERE MarqueID = (SELECT MarqueID FROM Marques WHERE Nom = 'HP');

SELECT * FROM Ordinateurs WHERE DateAchat BETWEEN '2028-01-01' AND '2030-12-31';

SELECT * FROM Ordinateurs
WHERE MarqueID = (SELECT MarqueID FROM Marques WHERE Nom = 'HP')
AND DateAchat BETWEEN "2029-01-01" AND "2030-12-31";

SELECT COUNT(*) FROM Ordinateurs WHERE MarqueID = (SELECT MarqueID FROM Marques WHERE Nom = 'Dell');

SELECT * FROM Ordinateurs WHERE RAM BETWEEN 4 AND 8;

SELECT Logiciels.* FROM Logiciels_Installes
JOIN Logiciels ON Logiciels_Installes.LogicielID = Logiciels.LogicielID
WHERE Logiciels_Installes.OrdinateurID = 1234;

SELECT Logiciels_Installes.* FROM Logiciels_Installes
JOIN Ordinateurs ON Logiciels_Installes.OrdinateurID = Ordinateurs.OrdinateurID
JOIN Users ON Ordinateurs.UserID = Users.UserID
WHERE Users.Nom = 'Gomez';

SELECT Users.* FROM Users
JOIN Ordinateurs ON Users.UserID = Ordinateurs.UserID
WHERE Ordinateurs.MarqueID = (SELECT MarqueID FROM Marques WHERE Nom = 'HP');

SELECT Users.* FROM Users
JOIN Ordinateurs ON Users.UserID = Ordinateurs.UserID
WHERE Ordinateurs.MarqueID = (SELECT MarqueID FROM Marques WHERE Nom = 'HP')
AND Ordinateurs.OS = 'Windows 10';

SELECT * FROM Maintenance WHERE DateAction BETWEEN "2023-11-01" AND "2023-11-03";
