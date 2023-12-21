-- Création de la base de données Banque
CREATE DATABASE IF NOT EXISTS Banque;

-- Utilisation de la base de données Banque
USE Banque;

-- Création de la table Agence
CREATE TABLE IF NOT EXISTS Agence (
    Num_Agence INT PRIMARY KEY,
    Nom VARCHAR(255),
    Ville VARCHAR(255),
    Actif BOOLEAN
);

-- Création de la table CLIENT
CREATE TABLE IF NOT EXISTS CLIENT (
    Num_Client INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Ville VARCHAR(255)
);

-- Création de la table COMPTE
CREATE TABLE IF NOT EXISTS COMPTE (
    Num_Compte INT PRIMARY KEY,
    Num_Agence INT,
    Num_Client INT,
    Solde DECIMAL(10, 2),
    FOREIGN KEY (Num_Agence) REFERENCES Agence(Num_Agence),
    FOREIGN KEY (Num_Client) REFERENCES CLIENT(Num_Client)
);

-- Création de la table EMPRUNT
CREATE TABLE IF NOT EXISTS EMPRUNT (
    Num_Emprunt INT PRIMARY KEY,
    Num_Agence INT,
    Num_Client INT,
    Montant DECIMAL(10, 2),
    FOREIGN KEY (Num_Agence) REFERENCES Agence(Num_Agence),
    FOREIGN KEY (Num_Client) REFERENCES CLIENT(Num_Client)
);
