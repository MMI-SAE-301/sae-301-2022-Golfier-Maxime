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

CREATE VIEW allmontre as
SELECT *
FROM "montre"

CREATE VIEW allmatériaux as
SELECT *
FROM "matériaux"

create view allCuir as 
Select "montre".*
From "montre", "matériaux"
Where "matériaux"."id_materiaux" = "montre"."id_materiaux" AND "matériaux"."libelle_materiaux" = 'Cuir'

create view allMetal as 
Select "montre".*
From "montre", "matériaux"
Where "matériaux"."id_materiaux" = "montre"."id_materiaux" AND "matériaux"."libelle_materiaux" = 'Or'


--
-- code pour la création des policies
--
matériaux :

Policy name : Enable read access for all users
Target roles : x
USING expression : true


montre :

Policy name : Enable insert for authenticated users only
Target roles : authentificated
USING expression : true

Policy name : Enable read access for all users
Target roles : x
USING expression : true
-- Pour la Policies Update


Policy name : Enable update for users based on email
Target roles : x
USING expression : (uid() = id_user)
WITH CHECK expression : (uid() IN ( SELECT allmontre.id_user
FROM allmontre))
