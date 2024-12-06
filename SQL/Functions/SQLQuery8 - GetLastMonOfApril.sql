USE PD_318_DML;
GO

CREATE FUNCTION GetLastMonOfApril
(
	@year	AS	INT
)
RETURNS DATE
AS
BEGIN
	DECLARE @date	AS	DATE = DATEFROMPARTS(@year, 04, 30);
	RETURN DATEADD(DAY, 1 - DATEPART(WEEKDAY, @date), @date);
END