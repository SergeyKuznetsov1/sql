/*
BACKUP DATABASE [MKIP_Metrolog] TO  DISK = N'E:\DB_Backup\SQL\MKIP_backup.bak' WITH  COPY_ONLY, NOFORMAT, INIT,  NAME = N'MKIP_Metrolog-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
*/

USE [master]
RESTORE DATABASE [TST_MKIP_forIT] FROM  DISK = N'E:\DB_Backup\SQL\MKIP_backup.bak' WITH  FILE = 1,  MOVE N'MKIP_METROLOG' TO N'E:\MSSQL13.MSSQLSERVER\MSSQL\DATA\TST_MKIP_forIT.mdf',  MOVE N'MKIP_METROLOG_log' TO N'G:\MSSQL13.MSSQLSERVER\MSSQL\Log\TST_MKIP_forIT_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
GO
