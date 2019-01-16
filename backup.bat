

@ECHO OFF

ECHO MySQL 1st DATABASES BACKUP START...

FOR /F "tokens=1-3 delims=- " %%a IN ('DATE /T') DO (SET dt=%%a-%%b-%%c)
FOR /F "tokens=1-4 delims=:." %%a IN ('ECHO %TIME%') DO (SET tm=%%a%%b%%c%%d)
SET backupfilename=_%dt%.sql
ECHO BACKUP-NAME : %backupfilename%

mysqldump --routines -u'username' -p'password' 'dbname' > C:\dbbackup\"'dbname'%backupfilename%"
SET DBNAME = "'dbname'"
ECHO %DBNAME% CLEAR...

ECHO MySQL 2ed DATABASES BACKUP START...
FOR /F "tokens=1-3 delims=- " %%a IN ('DATE /T') DO (SET dt=%%a-%%b-%%c)
FOR /F "tokens=1-4 delims=:." %%a IN ('ECHO %TIME%') DO (SET tm=%%a%%b%%c%%d)
SET backupfilename=_%dt%.sql
ECHO BACKUP-NAME : %backupfilename%

mysqldump --routines -u'username' -p'password' 'dbname' > C:\dbbackup\"'dbname'%backupfilename%"
SET DBNAME = "'dbname'"
ECHO %DBNAME% CLEAR...

ECHO MySQL 3rd DATABASES BACKUP START...
FOR /F "tokens=1-3 delims=- " %%a IN ('DATE /T') DO (SET dt=%%a-%%b-%%c)
FOR /F "tokens=1-4 delims=:." %%a IN ('ECHO %TIME%') DO (SET tm=%%a%%b%%c%%d)
SET backupfilename=_%dt%.sql
ECHO BACKUP-NAME : %backupfilename%

mysqldump --routines -u'username' -p'password' 'dbname' > C:\dbbackup\"'dbname'%backupfilename%"
SET DBNAME = "'dbname'"
ECHO %DBNAME% CLEAR...

ECHO MySQL 4rd DATABASES BACKUP START...
FOR /F "tokens=1-3 delims=- " %%a IN ('DATE /T') DO (SET dt=%%a-%%b-%%c)
FOR /F "tokens=1-4 delims=:." %%a IN ('ECHO %TIME%') DO (SET tm=%%a%%b%%c%%d)
SET backupfilename=_%dt%.sql
ECHO BACKUP-NAME : %backupfilename%

mysqldump --routines -u'username' -p'password' 'dbname' > C:\dbbackup\"'dbname'%backupfilename%"
SET DBNAME = "'dbname'"
ECHO %DBNAME% CLEAR...

