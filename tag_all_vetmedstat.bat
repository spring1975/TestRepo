cls
cd %~dp0
@echo off
cls
ECHO Tagging all projects in the VetMedStat SVN Repository.

:inputSource
ECHO Which branch do you want to tag?
set source=
set /P source=Source Branch: %=%
if "%source%"=="" goto inputTag

:inputTag
ECHO What is the name of the tag you wish to create?
set tagName=
set /P tagName=Version Tag: %=%
if "%tagName%"=="" goto areYouSure

:areYouSure
ECHO Are you sure you want to tag the %source% line of code with the tag %tagName% (y/n)?
set sure=
set /p sure=
if not '%sure%'=='' set choice=%choice:~0,1%
if '%sure%'=='y' (
	GOTO tagIt
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

:tagIt
setlocal EnableDelayedExpansion
set "baseURL=http://subversion.idexx.com.local/subversion/VetMedStat"
set "tag=tags/%tagName%"
set "branch=branches/%source%"

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
svn mkdir -m "" %DicomConverter%/%tag%
svn copy -m -rHEAD %DicomConverter%/%branch% %DicomConverter%/%tag%/DicomConverter

ECHO DicomServer
svn mkdir -m "" %DicomServer%/%tag%
svn copy -m -rHEAD %DicomServer%/Releases %DicomServer%/%tag%
svn copy -m -rHEAD %DicomServer%/%branch% %DicomServer%/%tag%/DicomServer

ECHO VetMedStat_rc
svn mkdir -m "" %VetMedStat_rc%/%tag%
svn copy -m -rHEAD %VetMedStat_rc%/Releases %VetMedStat_rc%/%tag%
svn copy -m -rHEAD %VetMedStat_rc%/%branch% %VetMedStat_rc%/%tag%/VetMedStat_rc

ECHO VMS1
svn mkdir -m "" %VMS1%/%tag%
svn copy -m -rHEAD %VMS1%/Releases %VMS1%/%tag%
svn copy -m -rHEAD %VMS1%/%branch% %VMS1%/%tag%/VMS1

ECHO VMSAdmin
svn mkdir -m "" %VMSAdmin%/%tag%
svn copy -m -rHEAD %VMSAdmin%/Releases %VMSAdmin%/%tag%
svn copy -m -rHEAD %VMSAdmin%/%branch% %VMSAdmin%/%tag%/VMSAdmin

ECHO VMSAdminVB
svn mkdir -m "" %VMSAdminVB%/%tag%
svn copy -m -rHEAD %VMSAdminVB%/Releases %VMSAdminVB%/%tag%
svn copy -m -rHEAD %VMSAdminVB%/%branch% %VMSAdminVB%/%tag%/VMSAdminVB

ECHO VMSClient
svn mkdir -m "" %VMSClient%/%tag%
svn copy -m -rHEAD %VMSClient%/Releases %VMSClient%/%tag%
svn copy -m -rHEAD %VMSClient%/%branch% %VMSClient%/%tag%/VMSClient

ECHO VMSDatabase
svn copy -m -rHEAD %VMSDatabase%/%branch% %VMSDatabase%/%tag%

ECHO VMSIntegrations
svn mkdir -m "" %VMSIntegrations%/%tag%
svn copy -m -rHEAD %VMSIntegrations%/Releases %VMSIntegrations%/%tag%
svn copy -m -rHEAD %VMSIntegrations%/%branch% %VMSIntegrations%/%tag%/VMSIntegrations

ECHO VMSReports
svn mkdir -m "" %VMSReports%/%tag%
svn copy -m -rHEAD %VMSReports%/Releases %VMSReports%/%tag%
svn copy -m -rHEAD %VMSReports%/%branch% %VMSReports%/%tag%/VMSReports

ECHO VMSViewer
svn mkdir -m "" %VMSViewer%/%tag%
svn copy -m -rHEAD %VMSViewer%/%branch% %VMSViewer%/%tag%/VMSViewer

ECHO VMSWebServices3
svn mkdir -m "" %VMSWebServices3%/%tag%
svn copy -m -rHEAD %VMSWebServices3%/Releases %VMSWebServices3%/%tag%
svn copy -m -rHEAD %VMSWebServices3%/%branch% %VMSWebServices3%/%tag%/VMSWebServices3
pause