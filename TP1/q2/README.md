## 2. Ecrivez les requestes SQL correspondant aux questions suivantes : 

#### (a) Les Clients n'ayant pas de compte dans la meme agence que Liliane Bettencourt
(Tableau résultat : Num_Client).
Attention, la question est plus difficile qu'il n'y parait. Malgré les apparences la requete suivante par exemple ne convient pas : 

```sql
SELECT Num_client FROM COMPTE
WHERE Num_Agence NOT IN (SELECT Num_Agence FROM COMPTE NATURAL JOIN CLIENT
			WHERE Client.Nom = 'Bettencourt' 
			AND Client.Prenom = 'Liliance');
Cette request retourne les Clients qui ont un compte dans une agence dans laquelle
Liliance Bettencourt n'a pas de compte. 
```
#### (b) Les agences ayant un actif plus élevé que toutes les agences de Saint-Ouen.
	(Tableau resultat : Num_Agence).

#### (c) Le solde moyen des comptes clients, poue chaque agence dont le solde moyen est supérieur a 10000. 
	(Tebleau résultat: Num_Agence, Solde_Moyen).

#### (d) Le nombre de clients de l'agence de nom "Paris-BNF" dont la ville n'est pas renseignée dans la realtaion CLIENT
	(Tableau résultat : Nombre).

#### (e) Les clients ayant un compte dont le solde est supérieur a la somme totale de tous les actifs des agences de Saint-Ouen.
	(Tableau résultat : Num_Client)

#### (f) Les clients dont la somme du solde de tous les comptes est inférieure a l'actif de chaque agence.
	(Tableau résultat : Num_Client).
	
#### (g) Les clients ayant un compte dans toutes les agences de Saint-Ouen. 
	(Tableau résultat : Num_Client).

