-- se connecter dans le terminal
psql postgres

-- créer un utilisateur et son mot de passe sécurisé
CREATE ROLE simplon WITH LOGIN PASSWORD 'azerty';

-- donné le role createbd à simplon pour qu'il puisse avoir une base de donnée
ALTER ROLE simplon CREATEDB;

-- connecter avec le compte utilisateur simplon
psql postgres -U simplon

-- création d'une base de donnée
CREATE DATABASE exercice;

-- attribution des droits à la bdd exercice pour simplon
GRANT ALL PRIVILEGES ON DATABASE exercice TO simplon;

-- connexion à la bdd
\connect exercice

-- création des tables
CREATE TABLE SEGMENT (
    N_SEGMENT           VARCHAR(10)         PRIMARY KEY,
    NOM_SEGMENT         VARCHAR(20)         NOT NULL
);

CREATE TABLE SALLE (
    N_SALLE             VARCHAR(7)          PRIMARY KEY,
    NOM_SALLE           VARCHAR(20),
    NB_POSTE            INT,
    
    N_SEGMENT           VARCHAR(10),

    CONSTRAINT  fk_n_segment  
    FOREIGN KEY(N_SEGMENT) 
    REFERENCES SEGMENT(N_SEGMENT)
);

CREATE TABLE POSTE (
    N_POSTE             VARCHAR(7)          PRIMARY KEY,
    NOM_POSTE           VARCHAR(20),
    AD                  VARCHAR(2),
    TYPE_POSTE          VARCHAR(20),

    N_SEGMENT           VARCHAR(10),
    N_SALLE             VARCHAR(7),

    CONSTRAINT  fk_n_segment  
    FOREIGN KEY(N_SEGMENT) 
    REFERENCES SEGMENT(N_SEGMENT),

    CONSTRAINT  fk_n_salle  
    FOREIGN KEY(N_SALLE) 
    REFERENCES SALLE(N_SALLE)
);

CREATE TABLE LOGICIEL (
    N_LOGICIEL          VARCHAR(7)          PRIMARY KEY,
    NOM_LOGICIEL        VARCHAR(20),
    DATE_ACHAT          DATE,
    VERSION             VARCHAR(7),
    TYPE_LOGICIEL       VARCHAR(20)
);

CREATE TABLE INSTALLER (
    N_POSTE             VARCHAR(7)          PRIMARY KEY,
    DATE_INS            DATE,
    
    N_LOGICIEL          VARCHAR(7),

    CONSTRAINT  fk_n_logiciel  
    FOREIGN KEY(N_LOGICIEL) 
    REFERENCES LOGICIEL(N_LOGICIEL)
);