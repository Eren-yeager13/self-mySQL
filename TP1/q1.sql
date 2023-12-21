select Num_Client from compte 
where solde < 1000 or solde > 10000
group by Num_Client;