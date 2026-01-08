-- Question 1: List all articles with their authors
SELECT a.titre, a.date_pub, u.nom AS auteur
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id;


-- Question 2: Show articles written by a specific author (Alice)
SELECT a.titre, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.utilisateur_id
WHERE u.nom = 'Alice';


-- Question 3: Display all articles even those without an author
SELECT a.titre, u.nom AS auteur
FROM Article a
LEFT JOIN Utilisateur u ON a.id_utilisateur = u.id;


-- Question 4: Show articles with their comments
SELECT a.titre, c.contenu
FROM Article a
INNER JOIN Commentaire c ON a.id = c.id_article;


-- Question 5: Show articles, authors, and comments
SELECT a.titre, u.nom AS auteur, c.contenu
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
INNER JOIN Commentaire c ON a.id = c.id_article;
