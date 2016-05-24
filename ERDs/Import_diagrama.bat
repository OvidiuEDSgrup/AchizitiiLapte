sqlcmd -E -Q "TRUNCATE TABLE AL.dbo.sysdiagrams"
bcp AL.dbo.sysdiagrams IN Achizitii_Lapte.bcp -c -T