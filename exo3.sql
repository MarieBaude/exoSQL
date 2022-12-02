-- Lister toutes les données de la table SEGMENT
SELECT *
FROM Segment;

-- Lister les postes dont le type est UNIX
SELECT * 
FROM poste 
WHERE TYPE_POSTE = 'UNIX';

-- Lister les logiciels dont la date d’achat est antérieure au 31/12/2021
SELECT * 
FROM LOGICIEL 
WHERE DATE_ACHAT < '2021-12-31';

-- Lister tous les logiciels dont le type est PCWS
SELECT * 
FROM LOGICIEL 
WHERE TYPE_LOGICIEL = 'PCWS';

-- Lister les postes dont le type de segment est 130.120.80
SELECT * 
FROM POSTE 
WHERE N_SEGMENT = '130.120.80';

-- Lister les postes contenus dans les salles s01 et s03
SELECT * 
FROM POSTE 
WHERE N_SALLE = 'S01' OR N_SALLE = 'S03';