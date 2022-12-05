/*11 : Sélectionner les employés dont la commission est inférieure au salaire. Vérifiez le résultat jusqu’à obtenir la bonne réponse.*/
SELECT prenom, nom
FROM emp
WHERE comm < sal;

/*12 : Sélectionner les employés qui ne touchent jamais de commission.*/
SELECT prenom, nom
FROM emp
WHERE comm ISNULL;

/*13 : Sélectionner les employés qui touchent éventuellement une commission et dans l’ordre croissant des commissions.*/
SELECT prenom, nom
FROM emp
WHERE comm IS NOT NULL
ORDER BY comm;

/*14 : Sélectionner les employés qui ont un chef.*/
SELECT prenom, nom
FROM emp
WHERE sup IS NOT NULL;

/*15 : Sélectionner les employés qui n’ont pas de chef.*/
SELECT prenom, nom
FROM emp
WHERE sup IS NULL;

/*16 : Sélectionner les noms, emploi, salaire, numéro de service de tous les employés du service 5 qui gagnent plus de 20000 €.*/


/*17 : Sélectionner les vendeurs du service 6 qui ont un revenu mensuel supérieur ou égal à 9500 €.*/
/*18 : Sélectionner dans les employés tous les présidents et directeurs. Attention, le français et la logique sont parfois contradictoires.*/
/*19 : Sélectionner les directeurs qui ne sont pas dans le service 3.*/
/*20 : Sélectionner les directeurs et « les techniciens du service 1 ».*/