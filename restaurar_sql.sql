RESTORE FILELISTONLY
FROM DISK = N'/var/opt/mssql/backup/AdventureWorks2022.bak';
GO



USE master;
GO

RESTORE DATABASE AdventureWorks2022
FROM DISK = N'/var/opt/mssql/backup/AdventureWorks2022.bak'
WITH
    MOVE N'AdventureWorks2022'
        TO N'/var/opt/mssql/data/AdventureWorks2022.mdf',
    MOVE N'AdventureWorks2022_Log'
        TO N'/var/opt/mssql/data/AdventureWorks2022_Log.ldf',
    STATS = 5;
GO