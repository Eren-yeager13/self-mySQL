select NumClient from client
where NumClient in (
  select NumClient from compte
    where solde<1000 or solde>10000
  )
