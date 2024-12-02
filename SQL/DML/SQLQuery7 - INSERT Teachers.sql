USE Academy_SQL;

INSERT Teachers
		(last_name, first_name, middle_name, birth_date, work_since)
VALUES	
		(N'Ковтун',		N'Олег',		N'Анатольевич',		'1986-08-25',		'2014-01-25'),
		(N'Андреев',	N'Александр',	N'Сергеевич',		'1988-05-12',		'2020-04-09'),
		(N'Страйстар',	N'Александр',	N'Владимирович',	'1977-12-12',		'2018-03-23');

SELECT * FROM Teachers;