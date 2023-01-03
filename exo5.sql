-- Lister tous les types de postes n’existant pas dans le parc informatique ?
SELECT type_lp
FROM type
EXCEPT 
SELECT type_poste
FROM poste;

-- Lister les types existants à la fois comme poste et comme logiciel ?
SELECT type_poste
FROM poste
INTERSECT
SELECT type_logiciel
FROM logiciel;

-- Lister les types qui existent en tant que poste mais pas en tant que logiciel ?
SELECT type_poste
FROM poste
WHERE type_poste 
NOT IN (SELECT type_logiciel FROM logiciel);

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