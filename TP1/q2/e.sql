SELECT DISTINCT c.Num_Client
FROM CLIENT c
JOIN COMPTE cm ON c.Num_Client = cm.Num_Client
WHERE cm.Solde > (
    SELECT SUM(a.Actif)
    FROM Agence a
    WHERE a.Ville = 'Saint-Ouen'
);
