cls
cd %~dp0
@echo off

SET "tbinput=%1"
SET "baseLocal=%~dp0"
SET "baseBranch=
SET "baseURL=http://subversion.idexx.com.local/subversion/VetMedStat/"
SET "CommonLibraries=%baseURL%CommonLibraries/"
SET "DicomConverter=%baseURL%DicomConverter/"
SET "DicomServer=%baseURL%DicomServer/"
SET "VetMedStat_rc=%baseURL%VetMedStat_rc/"
SET "VMS1=%baseURL%VMS1/"
SET "VMSAdmin=%baseURL%VMSAdmin/"
SET "VMSAdminVB=%baseURL%VMSAdminVB/"
SET "VMSClient=%baseURL%VMSClient/"
SET "VMSDatabase=%baseURL%VMSDatabase/"
SET "VMSIntegrations=%baseURL%VMSIntegrations/"
SET "VMSReports=%baseURL%VMSReports/"
SET "VMSViewer=%baseURL%VMSViewer/"
SET "VMSWebServices3=%baseURL%VMSWebServices3/"

:BEGIN
cls
ECHO Would you like to switch to the trunk or a branch?
ECHO 1. trunk
ECHO 2. branch


SET tbinput=
SET /p tbinput=

IF "%tbinput%"=="1" GOTO SwitchToTrunk
IF "%tbinput%"=="" GOTO BEGIN

:InputBranch
ECHO What branch would you like to switch to?
SET switchingTo=
SET /P switchingTo=Branch: %=%
IF "%switchingTo%"=="" GOTO BEGIN
SET "switchingTo=branches/%switchingTo%"
GOTO StartSwitch

:SwitchToTrunk
SET "switchingTo=trunk"

:StartSwitch
@ECHO ON
ECHO CommonLibraries >> switchlog.txt
svn switch "%CommonLibraries%%switchingTo%" "%baseLocal%CommonLibraries\working" --ignore-ancestry >> switchlog.txt

DicomConverter >> switchlog.txt
svn switch "%DicomConverter%%switchingTo%" "%baseLocal%DicomConverter\working" --ignore-ancestry >> switchlog.txt

ECHO DicomServer >> switchlog.txt
svn switch "%DicomServer%%switchingTo%" "%baseLocal%DicomServer\working" --ignore-ancestry >> switchlog.txt
svn switch "%DicomServer%%switchingTo%\Releases\First Time Configs" "%baseLocal%DicomServer\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%DicomServer%%switchingTo%\Releases\update" "%baseLocal%DicomServer\Releases\update" --ignore-ancestry >> switchlog.txt

ECHO VetMedStat_rc >> switchlog.txt
svn switch "%VetMedStat_rc%%switchingTo%" "%baseLocal%VetMedStat_rc\working" --ignore-ancestry >> switchlog.txt
svn switch "%VetMedStat_rc%%switchingTo%\Releases\First Time Configs" "%baseLocal%VetMedStat_rc\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VetMedStat_rc%%switchingTo%\Releases\wwwroot" "%baseLocal%VetMedStat_rc\Releases\wwwroot" --ignore-ancestry >> switchlog.txt

ECHO VMS1 >> switchlog.txt
svn switch "%VMS1%%switchingTo%" "%baseLocal%VMS1\working" --ignore-ancestry >> switchlog.txt
svn switch "%VMS1%%switchingTo%\Releases\First Time Configs" "%baseLocal%VMS1\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VMS1%%switchingTo%\Releases\WebRoot" "%baseLocal%VMS1\Releases\WebRoot" --ignore-ancestry >> switchlog.txt

ECHO VMSAdmin >> switchlog.txt
svn switch "%VMSAdmin%%switchingTo%" "%baseLocal%VMSAdmin\working" --ignore-ancestry >> switchlog.txt
svn switch "%VMSAdmin%%switchingTo%\Releases\First Time Configs" "%baseLocal%VMSAdmin\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VMSAdmin%%switchingTo\Releases\webroot%" "%baseLocal%VMSAdmin\Releases\webroot" --ignore-ancestry >> switchlog.txt

VMSAdminVB >> switchlog.txt
svn switch "%VMSAdminVB%%switchingTo%" "%baseLocal%VMSAdminVB\working" --ignore-ancestry >> switchlog.txt

ECHO VMSClient >> switchlog.txt
svn switch "%VMSClient%%switchingTo%" "%baseLocal%VMSClient\working" --ignore-ancestry >> switchlog.txt
svn switch "%VMSClient%%switchingTo%\Releases\First Time Configs" "%baseLocal%VMSClient\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VMSClient%%switchingTo%\Releases\Webroot" "%baseLocal%VMSClient\Releases\Webroot" --ignore-ancestry >> switchlog.txt

ECHO VMSDatabase >> switchlog.txt
svn switch "%VMSDatabase%%switchingTo%" "%baseLocal%VMSDatabase\working" --ignore-ancestry >> switchlog.txt

ECHO VMSIntegrations >> switchlog.txt
svn switch "%VMSIntegrations%%switchingTo%" "%baseLocal%VMSIntegrations\working" --ignore-ancestry >> switchlog.txt
svn switch "%VMSIntegrations%%switchingTo%\Releases\First Time Configs" "%baseLocal%VMSIntegrations\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VMSIntegrations%%switchingTo%\Releases\wwwroot" "%baseLocal%VMSIntegrations\Releases\wwwroot" --ignore-ancestry >> switchlog.txt

ECHO VMSViewer >> switchlog.txt
svn switch "%VMSViewer%%switchingTo%" "%baseLocal%VMSViewer\working" --ignore-ancestry >> switchlog.txt

ECHO VMSWebServices3 >> switchlog.txt
svn switch "%VMSWebServices3%%switchingTo%" "%baseLocal%VMSWebServices3\working" --ignore-ancestry >> switchlog.txt
svn switch "%VMSWebServices3%%switchingTo%\Releases\First Time Configs" "%baseLocal%VMSWebServices3\Releases\First Time Configs" --ignore-ancestry >> switchlog.txt
svn switch "%VMSWebServices3%%switchingTo%\Releases\wwwroot" "%baseLocal%VMSWebServices3\Releases\wwwroot" --ignore-ancestry >> switchlog.txt


pause