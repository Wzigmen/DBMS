USE PD_318_DML;
GO

SELECT
		[����]			= [date],
		[�����]			= [time],
		[������]		= [group],
		[����������]	= discipline_name,
		[�������������] = FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
		[���� �������]	= [subject],
		[C�����]		= IIF(spent = 1, N'���������', N'�������������')
FROM Schedule, Groups, Disciplines, Teachers
WHERE
		[group]		= group_id
AND		discipline	= discipline_id
AND		teacher		= teacher_id
AND		[date]		= '2024-10-25'
;