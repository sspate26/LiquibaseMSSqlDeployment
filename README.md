# LiquibaseMSSqlDeployment

Using liquibase to execute sql script on ubuntu machine for automation 

Download SQL JDBC driver from microsoft officer website: https://docs.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-ver15

The jdfc driver file needs to moved to home directory of user path (who will execute the script or root)otherwise the liquibase command will fail with error "driver not found"

Next either configure the liquibase.properties file or directly use liquibase command with required parameters like below:

liquibase --changeLogFile=*.sql --url="jdbc:sqlserver://<SQL-URL>:1433;database=<dbname>;" \
--username=<username> \
--password=<password> \
--driver=com.microsoft.sqlserver.jdbc.SQLServerDriver \
--classpath=mssql-jdbc-9.2.1.jre8.jar generateChangeLog
