$Date = Get-Date -Format "yyyyMMdd"
$BackupPath = "C:\backup\janua_backup_$Date.dump"
$env:PGPASSWORD="3rg0m3rc4t0r"
"C:\Program Files\PostgreSQL\12\pgAdmin 4\runtime\pg_dump.exe" --file "C:\Users\ergom\Downloads\sportmedia.backup" --host pg.januaservers.com -p 5432 -U ergo -F c -b -v -f $BackupPath Januaproject