-- Insertion dans la table Agence
INSERT INTO Agence (Num_Agence, Nom, Ville, Actif)
VALUES
(1, 'Agence Paris', 'Paris', true),
(2, 'Agence Lyon', 'Lyon', true),
(3, 'Agence Marseille', 'Marseille', false);

-- Insertion dans la table CLIENT
INSERT INTO CLIENT (Num_Client, Nom, Prenom, Ville)
VALUES
(1, 'Dupont', 'Pierre', 'Paris'),
(2, 'Martin', 'Sophie', 'Lyon'),
(3, 'Lefevre', 'Jean', 'Marseille');

-- Insertion dans la table COMPTE
INSERT INTO COMPTE (Num_Compte, Num_Agence, Num_Client, Solde)
VALUES
(101, 1, 1, 5000.00),
(102, 2, 2, 8000.00),
(103, 3, 3, 12000.00);

-- Insertion dans la table EMPRUNT
INSERT INTO EMPRUNT (Num_Emprunt, Num_Agence, Num_Client, Montant)
VALUES
(201, 1, 1, 3000.00),
(202, 2, 2, 5000.00),
(203, 3, 3, 8000.00);
