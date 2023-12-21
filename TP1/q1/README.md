## 1. Sans utiliser DISTINCT, donnez une requete équivalente en SQL : 

```sql
SELECT DISTINCT Num_Client
FROM COMPTE
WHERE solde < 1000 OR solde > 10000;
```
