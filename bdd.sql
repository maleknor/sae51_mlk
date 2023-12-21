DROP DATABASE mabdd;
CREATE DATABASE mabdd;
USE mabdd;

CREATE TABLE `Ordinateurs` (
  `OrdinateurID` INT AUTO_INCREMENT PRIMARY KEY,
  `UserID` INT,
  `MarqueID` INT,
  `DateAchat` DATE,
  `RAM` INT,
  `Stockage` INT,
  `OS` VARCHAR(100)
);

CREATE TABLE `Logiciels_Installes` (
  `Logiciels_installesID` INT,
  `OrdinateurID` INT,
  `LogicielID` INT
);

CREATE TABLE `Logiciels` (
  `LogicielID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nom` VARCHAR(200)
);

CREATE TABLE `Marques` (
  `MarqueID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nom` VARCHAR(200)
);

CREATE TABLE `Users` (
  `UserID` INT AUTO_INCREMENT PRIMARY KEY,
  `Nom` VARCHAR(200),
  `Prenom` VARCHAR(200)
);

CREATE TABLE `Maintenance` (
  `MaintenanceID` INT AUTO_INCREMENT PRIMARY KEY,
  `OrdinateurID` INT,
  `Description` VARCHAR(250),
  `Action` VARCHAR(100),
  `DateAction` TIMESTAMP
);

ALTER TABLE `Logiciels_Installes` ADD FOREIGN KEY (`LogicielID`) REFERENCES `Logiciels` (`LogicielID`);

ALTER TABLE `Logiciels_Installes` ADD FOREIGN KEY (`OrdinateurID`) REFERENCES `Ordinateurs` (`OrdinateurID`);

ALTER TABLE `Maintenance` ADD FOREIGN KEY (`OrdinateurID`) REFERENCES `Ordinateurs` (`OrdinateurID`);

ALTER TABLE `Ordinateurs` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

ALTER TABLE `Ordinateurs` ADD FOREIGN KEY (`MarqueID`) REFERENCES `Marques` (`MarqueID`);
