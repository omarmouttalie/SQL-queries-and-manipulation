create database BlogDB;
use BlogDB;

create table Utilisateur (
    utilisateur_id INT AUTO_INCREMENT PRIMARY KEY
    nom varchar(100),
    email varchar(50) NOT NULL UNIQUE,
    mot_de_pass varchar(50) NOT NULL
);

create table Article (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT,
    date_pub DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_utilisateur INT
    FORIGN KEY (id_utilisateur) REFRENCES Utilisateur(id_utilisateur)
);


INSERT INTO Article (titre, contenu, date_pub, id_utilisateur)
VALUES ('Bienvenue sur le blog', 'Ceci est le premier article.', '2025-07-18', 1);

INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES ('Alice', 'alice@test.com', '1234');

INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES 
  ('Bob', 'bob@test.com', 'passbob'),
  ('Charlie', 'charlie@test.com', 'passcharlie');


SELECT * FROM Utilisateur;
SELECT * FROM Article;


