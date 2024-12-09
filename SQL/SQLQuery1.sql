USE PD_318_DML;
GO

SELECT [date],DATENAME(WEEKDAY, [date]), holiday_name FROM DaysOFF JOIN Holidays ON (holiday=holiday_id);