CREATE DATABASE blogdb;
USE blogdb;

CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    date_pub DATE,
    utilisateur_id INT,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

CREATE TABLE commentaire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL,
    auteur VARCHAR(100),
    date_commentaire DATE,
    article_id INT,
    FOREIGN KEY (article_id) REFERENCES article(id)
);

INSERT INTO utilisateur (nom, email) VALUES
('Omar', 'omar@email.com'),
('Sara', 'sara@email.com');

INSERT INTO article (titre, contenu, date_pub, utilisateur_id) VALUES
('SQL Basics', 'Introduction to SQL', '2025-01-01', 1),
('Advanced SQL', 'JOINs and Subqueries', '2025-01-05', 1),
('CSS Tips', 'Design basics', '2025-01-10', 2);

INSERT INTO commentaire (contenu, auteur, date_commentaire, article_id) VALUES
('Very helpful!', 'Ali', '2025-01-06', 1),
('Nice article', 'Yassine', '2025-01-07', 1),
('Good explanation', 'Meryem', '2025-01-11', 3);


SELECT 
    article.titre,
    utilisateur.nom AS author
FROM article
INNER JOIN utilisateur
ON article.utilisateur_id = utilisateur.id;

SELECT 
    article.titre,
    utilisateur.nom AS author
FROM article
LEFT JOIN utilisateur
ON article.utilisateur_id = utilisateur.id;

SELECT 
    utilisateur.nom,
    COUNT(article.id) AS total_articles
FROM utilisateur
LEFT JOIN article
ON utilisateur.id = article.utilisateur_id
GROUP BY utilisateur.nom;

SELECT titre, date_pub
FROM article
ORDER BY date_pub DESC
LIMIT 2;

UPDATE article
SET titre = 'SQL for Beginners'
WHERE id = 1;

DELETE FROM commentaire
WHERE id = 2;

