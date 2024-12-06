USE	PD_318_DML;

SELECT  
		--last_name + ' ' + first_name + ' ' + middle_name	AS N'�.�.�',
		--[�.�.�.] = FORMATMESSAGE(IIF(middle_name IS NULL, N'%s %s', N'%s %s %s'), last_name, first_name, middle_name), 
		[�.�.�.] = FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
		birth_date			AS N'���� ��������',
		[�������]			= DATEDIFF(DAY, birth_date, GETDATE()) / 365,
		[group_name]		AS N'������',
		direction_name		AS N'����������� ��������'
		--COUNT(DISTINCT group_id)		AS N'���������� �����',
		--COUNT(DISTINCT student_id)		AS N'���������� ���������'	
FROM	Students, Groups, Directions
WHERE	
		[group] = group_id
--AND		direction = direction_id
--AND		direction_name = N'������������ ������� � ������'
AND		direction_name LIKE N'%�������%'
ORDER BY birth_date ASC
--ORDER BY [�������] DESC
-- �������� ����� 'WHERE' ���������� ������� ������,
-- ��� ������ ����� �������, ���������� ������ �� ��������� ������.
;