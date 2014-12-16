cls
cd %~dp0
@echo off
cls
ECHO Branching all projects in the VetMedStat SVN Repository.

:inputSource
ECHO Which tag do you want to branch?
set source=
set /P source=Source tag: %=%
if "%source%"=="" goto inputTag

:inputTag
ECHO What is the name of the branch you wish to create?
set branchName=
set /P branchName=Branch Name: %=%
if "%branchName%"=="" goto areYouSure

:areYouSure
ECHO Are you sure you want to branch the %source% line of code with the branch %branchName% (y/n)?
set sure=
set /p sure=
if not '%sure%'=='' set choice=%choice:~0,1%
if '%sure%'=='y' (
	GOTO branchIt
)
if '%sure%'=='n' (
	GOTO nope
)
ECHO "%sure%" is not valid please try again
ECHO.
GOTO areYouSure

:nope
ECHO Guess not.
PAUSE
EXIT

:branchIt
setlocal EnableDelayedExpansion
set "baseURL=http://subversion.idexx.com.local/subversion/VetMedStat"
set "branchDest=branches/%branchName%"
set "tagSource=tags/%source%"

set "CommonLibraries=%baseURL%/CommonLibraries"
set "DicomConverter=%baseURL%/DicomConverter"
set "DicomServer=%baseURL%/DicomServer"
set "VetMedStat_rc=%baseURL%/VetMedStat_rc"
set "VMS1=%baseURL%/VMS1"
set "VMSAdmin=%baseURL%/VMSAdmin"
set "VMSAdminVB=%baseURL%/VMSAdminVB"
set "VMSClient=%baseURL%/VMSClient"
set "VMSDatabase=%baseURL%/VMSDatabase"
set "VMSIntegrations=%baseURL%/VMSIntegrations"
set "VMSReports=%baseURL%/VMSReports"
set "VMSViewer=%baseURL%/VMSViewer"
set "VMSWebServices3=%baseURL%/VMSWebServices3"

ECHO DicomConverter
svn copy -m -rHEAD %DicomConverter%/%tagSource% %DicomConverter%/%branchDest%

ECHO DicomServer
svn copy -m -rHEAD %DicomServer%/%tagSource%/DicomServer %DicomServer%/%branchDest%
pause

ECHO VetMedStat_rc
svn copy -m -rHEAD %VetMedStat_rc%/%tagSource%/VetMedStat_rc %VetMedStat_rc%/%branchDest%

ECHO VMS1
svn copy -m -rHEAD %VMS1%/%tagSource%/VMS1 %VMS1%/%branchDest%

ECHO VMSAdminVB
svn copy -m -rHEAD %VMSAdminVB%/%tagSource%/VMSAdminVB %VMSAdminVB%/%branchDest%

ECHO VMSClient
svn copy -m -rHEAD %VMSClient%/%tagSource%/VMSClient %VMSClient%/%branchDest%

ECHO VMSDatabase
svn copy -m -rHEAD %VMSDatabase%/%tagSource% %VMSDatabase%/%branchDest%

ECHO VMSIntegrations
svn copy -m -rHEAD %VMSIntegrations%/%tagSource%/VMSIntegrations %VMSIntegrations%/%branchDest%

ECHO VMSReports
svn copy -m -rHEAD %VMSReports%/%tagSource%/VMSReports %VMSReports%/%branchDest%

ECHO VMSViewer
svn copy -m -rHEAD %VMSViewer%/%tagSource% %VMSViewer%/%branchDest%

ECHO VMSWebServices3
svn copy -m -rHEAD %VMSWebServices3%/%tagSource%/VMSWebServices3 %VMSWebServices3%/%branchDest%
pause