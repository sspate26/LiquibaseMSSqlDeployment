IF (NOT EXISTS (SELECT name 
FROM master.dbo.sysdatabases 
WHERE name = 'TESTDEMO'))

CREATE DATABASE [TESTDEMO];
