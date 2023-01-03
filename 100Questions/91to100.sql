/*91 : Même chose en écrivant la colonne embauche sous la forme ‘day dd month yyyy'


/*92 : Même chose en écrivant la colonne embauche sous la forme ‘day dd month(abv) yy'


/*93 : Même chose en écrivant la colonne embauche sous la forme ‘yy month(abv) dd'


/*94 : Même chose en écrivant la colonne embauche sous la forme ‘Day-dd-Month-yyyy'


/*95 : Sélectionner les employés avec leur ancienneté en jours dans l'entreprise.


/*96 : Sélectionner les employés avec leur ancienneté en mois dans l'entreprise.


/*97 : Sélectionner toutes les dates d’embauche majorées de 12 ans.


/*98 : Sélectionner les employés ayant plus de 12 ans d’ancienneté.



Plus amusant … ou pas
/*99 : Depuis combien de jours êtes-vous nés ?*/
SELECT DATEDIFF(day, '1995-02-20', GETDATE())



/*100 : Depuis combien de mois êtes-vous nés ?*/
SELECT DATEDIFF(month, '1995-02-20', GETDATE())

