@echo off
REM /closeonend:0 don't close the dialog automatically 
REM /closeonend:1 auto close if no errors 
REM /closeonend:2 auto close if no errors and conflicts 
REM /closeonend:3 auto close if no errors, conflicts and merges 
REM /closeonend:4 auto close if no errors, conflicts and merges for local operations
cls

REM Releases
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\Releases /closeonend:2

REM VMSDatabase
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSDatabase\working /closeonend:2

REM VMSClient
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSClient\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSClient\Releases\Webroot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSClient\Releases\First Time Configs" /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSClient\Releases\First Time Configs VMSDownloader" /closeonend:2

REM VMS Services
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSClient\Releases\Services" /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSClient\Releases\First Time Configs Services" /closeonend:2

REM VeMedStat_rc
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VetMedStat_rc\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VetMedStat_rc\Releases\wwwroot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VetMedStat_rc\Releases\First Time Configs" /closeonend:2

REM SSRS Reports
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\SSRSReports" /closeonend:2

REM DicomServer
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\DicomServer\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\DicomServer\Releases\update /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\DicomServer\Releases\First Time Configs" /closeonend:2

REM VMS1 (Legacy)
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMS1\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMS1\Releases\WebRoot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMS1\Releases\First Time Configs" /closeonend:2

REM VMSAdmin
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSAdmin\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSAdmin\Releases\webroot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSAdmin\Releases\First Time Configs" /closeonend:2

REM VMSIntegrations
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSIntegrations\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSIntegrations\Releases\wwwroot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSIntegrations\Releases\First Time Configs" /closeonend:2

REM VMSWebServices3
"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSWebServices3\working /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:C:\stuff\VetMedStat\Solutions\VMSWebServices3\Releases\wwwroot /closeonend:2
REM "C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /command:update /path:"C:\stuff\VetMedStat\Solutions\VMSWebServices3\Releases\First Time Configs" /closeonend:2
