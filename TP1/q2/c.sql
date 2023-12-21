SELECT Num_Agence, AVG(Solde) AS Solde_Moyen
FROM COMPTE
GROUP BY Num_Agence
HAVING Solde_Moyen > 10000;
