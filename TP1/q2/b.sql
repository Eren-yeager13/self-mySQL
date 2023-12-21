SELECT Num_Agence
FROM Agence
WHERE Actif > ALL (
    SELECT Actif
    FROM Agence
    WHERE Ville = 'Saint-Ouen'
);
