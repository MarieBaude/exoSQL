-- inséré des données 
INSERT INTO SEGMENT VALUES
('130.120.80','segment 80'),
('130.120.81','segment 81'),
('130.120.82','segment 82');

INSERT INTO SALLE VALUES
('S01','Salle 1', 3, '130.120.80'),
('S02','Salle 2', 2, '130.120.80'),
('S03','Salle 3', 2, '130.120.80'),
('S11','Salle 11', 2, '130.120.81'),
('S12','Salle 12', 2, '130.120.81'),
('S21','Salle 21', 2, '130.120.81');

INSERT INTO POSTE VALUES
('P1','Poste 1', '01', 'TX', '130.120.80', 'S01'),
('P2','Poste 2', '02', 'UNIX', '130.120.80', 'S01'),
('P3','Poste 3', '03', 'TX', '130.120.80', 'S01'),
('P4','Poste 4', '04', 'PCWS', '130.120.80', 'S02'),
('P5','Poste 5', '05', 'PCWS', '130.120.80', 'S02'),
('P6','Poste 6', '06', 'UNIX', '130.120.80', 'S03'),
('P7','Poste 7', '07', 'TX', '130.120.80', 'S03'),
('P8','Poste 8', '01', 'UNIX', '130.120.81', 'S11'),
('P9','Poste 9', '02', 'TX', '130.120.81', 'S11'),
('P10','Poste 10', '03', 'UNIX', '130.120.81', 'S12'),
('P11','Poste 11', '01', 'PCXP', '130.120.81', 'S21'),
('P12','Poste 12', '02', 'PCXP', '130.120.81', 'S21');

INSERT INTO LOGICIEL VALUES
('Log1', 'Oracle 9i', DATE '2021-05-13', '9.2', 'UNIX'),
('Log2', 'Oracle 10g', DATE '2020-05-15', '10.1', 'UNIX'),
('Log3', 'Sql Server', DATE '2022-05-12', '2020SE', 'PCXP'),
('Log4', '4D', DATE '2020-05-03', '2019.4', 'PCXP'),
('Log5', 'Windev', DATE '2021-05-12', '10', 'PCWS'),
('Log6', 'Sql*Net', DATE '2021-05-13', '2.5', 'UNIX'),
('Log7', 'I. I. S.', DATE '2020-05-12', '6.0', 'PCXP'),
('Log8', 'Autocad', DATE '2022-05-21', 'AU2019', 'PCWS');


INSERT INTO INSTALLER VALUES
('P2', 'Log1' DATE '2021-05-15',),
('P2', 'Log2' DATE '2020-09-17',),
('P4', 'Log5' DATE '2022-05-30',),
('P6', 'Log6' DATE '2021-05-20',),
('P6', 'Log1' DATE '2021-05-23',),
('P8', 'Log2' DATE '2021-05-19',),
('P8', 'Log6' DATE '2022-05-20',),
('P11', 'Log3' DATE '2020-04-20',),
('P12', 'Log4' DATE '2021-06-20',),
('P11', 'Log7' DATE '2022-04-20',);