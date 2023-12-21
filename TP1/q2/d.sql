SELECT COUNT(*) AS Nombre
FROM CLIENT
WHERE Num_Agence = (
    SELECT Num_Agence
    FROM Agence
    WHERE Nom = 'Paris-BNF'
)
AND (Ville IS NULL OR Ville = '');
