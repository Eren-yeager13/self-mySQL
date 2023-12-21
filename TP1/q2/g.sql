SELECT DISTINCT c.Num_Client
FROM CLIENT c
WHERE NOT EXISTS (
    SELECT a.Num_Agence
    FROM Agence a
    WHERE a.Ville = 'Saint-Ouen'
    AND NOT EXISTS (
        SELECT 1
        FROM COMPTE cm
        WHERE cm.Num_Client = c.Num_Client
        AND cm.Num_Agence = a.Num_Agence
    )
);
