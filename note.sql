CREATE TABLE CATERORY (
    id_category  VARCHAR(10)         PRIMARY KEY,
    name         VARCHAR(20)         NOT NULL
);

CREATE TABLE PRODUCT (
    id_product             VARCHAR(7)          PRIMARY KEY,
    name_product           VARCHAR(20),
    stock            INT,
    
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
    N_POSTE             VARCHAR(7) REFERENCES POSTE(N_POSTE) NOT NULL,
    N_LOGICIEL          VARCHAR(7) REFERENCES LOGICIEL(N_LOGICIEL) NOT NULL,
    
    DATE_INS            DATE,

    PRIMARY KEY (N_POSTE, N_LOGICIEL),

    CONSTRAINT  fk_n_poste  
    FOREIGN KEY(N_POSTE) 
    REFERENCES POSTE(N_POSTE),

    CONSTRAINT  fk_n_logiciel  
    FOREIGN KEY(N_LOGICIEL) 
    REFERENCES LOGICIEL(N_LOGICIEL)
);