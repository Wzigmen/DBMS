USE Academy_SQL;

SELECT 
	--COUNT(direction_id)
	--FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL (middle_name, N'')) AS N'�.�.�.',
	--group_name			AS N'������',
	direction_name		AS N'����������� ��������', 
	--COUNT(group_id)		AS N'���������� �����',
	COUNT(student_id)	AS N'���������� ���������'
FROM		Groups, Directions, Students
WHERE		Groups.direction = Directions.direction_id
AND			Students.[group] = Groups.group_id
GROUP BY	direction_name
;