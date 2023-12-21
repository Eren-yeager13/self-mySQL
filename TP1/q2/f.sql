SELECT DISTINCT c.Num_Client
FROM CLIENT c
JOIN COMPTE cm ON c.Num_Client = cm.Num_Client
GROUP BY c.Num_Client
HAVING SUM(cm.Solde) < ALL (
    SELECT a.Actif
    FROM Agence a
);
