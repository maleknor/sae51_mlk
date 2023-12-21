USE mabdd;
SET foreign_key_checks = 0;

LOAD DATA INFILE '/srv/csv/Logiciels.csv' INTO TABLE Logiciels FIELDS TERMINATED BY ',' IGNORE 1 ROWS (LogicielID,Nom) ;

LOAD DATA INFILE '/srv/csv/Logiciels_Installes.csv' INTO TABLE Logiciels_Installes FIELDS TERMINATED BY ',' IGNORE 1 ROWS (Logiciels_installesID,OrdinateurID,LogicielID) ;

LOAD DATA INFILE '/srv/csv/Users.csv' INTO TABLE Users FIELDS TERMINATED BY ',' IGNORE 1 ROWS (UserID,Nom,Prenom) ;

LOAD DATA INFILE '/srv/csv/Marques.csv' INTO TABLE Marques FIELDS TERMINATED BY ',' IGNORE 1 ROWS (Nom) ;

LOAD DATA INFILE '/srv/csv/Ordinateurs.csv' INTO TABLE Ordinateurs FIELDS TERMINATED BY ',' IGNORE 1 ROWS (UserID,MarqueID,DateAchat,RAM,Stockage,OS);

LOAD DATA INFILE '/srv/csv/Maintenance.csv' INTO TABLE Maintenance FIELDS TERMINATED BY ',' IGNORE 1 ROWS (MaintenanceID,OrdinateurID,Description,Action,DateAction)