--
-- code pour la création des tables
--
CREATE TABLE Utilisateur(
   id_utilisateur uuid,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   email VARCHAR(50),
   
   PRIMARY KEY(id_utilisateur)
);

CREATE TABLE Matériaux(
   id_materiaux uuid,
   libelle_materiaux VARCHAR(50),
   PRIMARY KEY(id_materiaux)
);
CREATE TABLE Montre(
   id_montre uuid,
   ecran VARCHAR(50),
   bracelet VARCHAR(50),
   boitier VARCHAR(50),
   id_materiaux uuid,
   commander boolean,
   PRIMARY KEY(id_montre),
   FOREIGN KEY(id_materiaux) REFERENCES Matériaux(id_materiaux)
);









--
-- code pour la création des vues
--




--
-- code pour la création des policies
--