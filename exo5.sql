-- Lister tous les types de postes n’existant pas dans le parc informatique ?
SELECT TYPE_POSTE 
FROM POSTE
INNER JOIN TYPE ON TYPE_LP != TYPE_POSTE; 

-- Lister les types existants à la fois comme poste et comme logiciel ?
SELECT TYPE_LP 
FROM Type
INNER JOIN LOGICIEL ON TYPE_POSTE = TYPE_LP AND TYPE_LOGICIEL = TYPE_LP;

-- Lister les types qui existent en tant que poste mais pas en tant que logiciel ?


-- Lister les ip des postes qui contiennent le logiciel « Log6 »
SELECT N_SEGMENT
FROM POSTE
INNER JOIN LOGICIEL ON N_LOGICIEL = 'Log6';

-- Lister les ip des postes qui contiennent le logiciel de nom « Oracle 9i »
SELECT N_SEGMENT,  NOM_LOGICIEL
FROM POSTE
INNER JOIN LOGICIEL ON NOM_LOGICIEL = 'Oracle 9i';


-- Lister le nom des segments possédant exactement trois postes de type TX
SELECT NOM_SEGMENT, TYPE_POSTE
FROM SEGMENT
INNER JOIN POSTE ON TYPE_POSTE = 'TX';

-- Lister le nom des salles où l’on peut trouver au moins un poste avec le logiciel « Oracle 10g » installé
SELECT NOM_SALLE
FROM SALLE
INNER JOIN LOGICIEL ON NOM_LOGICIEL = 'Oracle 10g';