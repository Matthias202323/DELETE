USE SuperMoney;
GO
BACKUP DATABASE SuperMoney
TO DISK = 'c:\tmp\SuperMoney.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of SuperMoney';
GO

BEGIN TRANSACTION;
DELETE TOP(3) FROM logs WHERE logs.[user] = 'hack3r';
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE
FROM logs
WHERE logs.[user] = 'hack3r';
COMMIT;