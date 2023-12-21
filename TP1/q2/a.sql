SELECT DISTINCT cl.Num_Client
FROM CLIENT cl
WHERE NOT EXISTS (
    SELECT 1
    FROM COMPTE co
    WHERE cl.Num_Client = co.Num_Client
      AND co.Num_Agence = (
          SELECT Num_Agence
          FROM CLIENT
          WHERE Nom = 'Bettencourt' AND Prenom = 'Liliane'
      )
);