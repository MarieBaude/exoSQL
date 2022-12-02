-- créer une nouvelle table
CREATE TABLE Type (
    TYPE_LP             VARCHAR(10),
    NOM_TYPE            VARCHAR(20),

    N_POSTE             VARCHAR(7),
    N_LOGICIEL          VARCHAR(7),

    CONSTRAINT  fk_n_poste  
    FOREIGN KEY(N_POSTE) 
    REFERENCES POSTE(N_POSTE),

    CONSTRAINT  fk_n_logiciel  
    FOREIGN KEY(N_LOGICIEL) 
    REFERENCES LOGICIEL(N_LOGICIEL)
);

-- les données
INSERT INTO Type VALUES
('TX','Terminal X-WINDOW'),
('UNIX','Système Unix'),
('PCXP','PC Windows XP'),
('PCWS','PC Windows Server'),
('NC','Network Computer');