USE Academy_SQL;

INSERT Teachers
		(last_name, first_name, middle_name, birth_date, work_since)
VALUES	
		(N'������',		N'����',		N'�����������',		'1986-08-25',		'2014-01-25'),
		(N'�������',	N'���������',	N'���������',		'1988-05-12',		'2020-04-09'),
		(N'���������',	N'���������',	N'������������',	'1977-12-12',		'2018-03-23');

SELECT * FROM Teachers;