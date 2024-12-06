USE	PD_318_DML;

SELECT  
		--last_name + ' ' + first_name + ' ' + middle_name	AS N'Ф.И.О',
		--[Ф.И.О.] = FORMATMESSAGE(IIF(middle_name IS NULL, N'%s %s', N'%s %s %s'), last_name, first_name, middle_name), 
		[Ф.И.О.] = FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
		birth_date			AS N'Дата рождения',
		[Возраст]			= DATEDIFF(DAY, birth_date, GETDATE()) / 365,
		[group_name]		AS N'Группа',
		direction_name		AS N'Направленик обучения'
		--COUNT(DISTINCT group_id)		AS N'Количество групп',
		--COUNT(DISTINCT student_id)		AS N'Количество студентов'	
FROM	Students, Groups, Directions
WHERE	
		[group] = group_id
--AND		direction = direction_id
--AND		direction_name = N'Компьютерная графика и дизайн'
AND		direction_name LIKE N'%графика%'
ORDER BY birth_date ASC
--ORDER BY [Возраст] DESC
-- Ключевое слово 'WHERE' определяет условие отбора,
-- при помощи таких условий, выбираются данные из связанных таблиц.
;