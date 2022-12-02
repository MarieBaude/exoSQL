-- Lister tous les types de postes n’existant pas dans le parc informatique
SELECT * 
FROM POSTE
WHERE TYPE_POSTE 

-- Lister les types existants à la fois comme poste et comme logiciel


-- Lister les types qui existent en tant que poste mais pas en tant que logiciel


-- Lister les ip des postes qui contiennent le logiciel « Log6 »


-- Lister les ip des postes qui contiennent le logiciel de nom « Oracle 9i »
SELECT N_SEGMENT,  NOM_LOGICIEL
FROM POSTE
INNER JOIN LOGICIEL ON NOM_LOGICIEL = 'Oracle 9i';


-- Lister le nom des segments possédant exactement trois postes de type TX


-- Lister le nom des salles où l’on peut trouver au moins un poste avec le logiciel « Oracle 10g » installé
