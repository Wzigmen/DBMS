CREATE DATABASE Academy_SQL
ON 
(	NAME		= Academy_SQL,
	FILENAME	= 'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Academy_SQL.mdf',
	SIZE		= 8 MB,
	MAXSIZE		= 500 MB,
	FILEGROWTH	= 8 MB
)
LOG ON --Cвойства файла журнала транзакций
(
	NAME		= Academy_SQL_Log,
	FILENAME	= 'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Academy_SQL_Log.ldf',
	SIZE		= 8 MB,
	MAXSIZE		= 500 MB,
	FILEGROWTH	= 8 MB
)