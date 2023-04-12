@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\software-developer\php\hypersonic\scripts\ctl.bat (start /MIN /B C:\software-developer\php\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\software-developer\php\ingres\scripts\ctl.bat (start /MIN /B C:\software-developer\php\ingres\scripts\ctl.bat START)
if exist C:\software-developer\php\mysql\scripts\ctl.bat (start /MIN /B C:\software-developer\php\mysql\scripts\ctl.bat START)
if exist C:\software-developer\php\postgresql\scripts\ctl.bat (start /MIN /B C:\software-developer\php\postgresql\scripts\ctl.bat START)
if exist C:\software-developer\php\apache\scripts\ctl.bat (start /MIN /B C:\software-developer\php\apache\scripts\ctl.bat START)
if exist C:\software-developer\php\openoffice\scripts\ctl.bat (start /MIN /B C:\software-developer\php\openoffice\scripts\ctl.bat START)
if exist C:\software-developer\php\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\software-developer\php\apache-tomcat\scripts\ctl.bat START)
if exist C:\software-developer\php\resin\scripts\ctl.bat (start /MIN /B C:\software-developer\php\resin\scripts\ctl.bat START)
if exist C:\software-developer\php\jetty\scripts\ctl.bat (start /MIN /B C:\software-developer\php\jetty\scripts\ctl.bat START)
if exist C:\software-developer\php\subversion\scripts\ctl.bat (start /MIN /B C:\software-developer\php\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\software-developer\php\lucene\scripts\ctl.bat (start /MIN /B C:\software-developer\php\lucene\scripts\ctl.bat START)
if exist C:\software-developer\php\third_application\scripts\ctl.bat (start /MIN /B C:\software-developer\php\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\software-developer\php\third_application\scripts\ctl.bat (start /MIN /B C:\software-developer\php\third_application\scripts\ctl.bat STOP)
if exist C:\software-developer\php\lucene\scripts\ctl.bat (start /MIN /B C:\software-developer\php\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\software-developer\php\subversion\scripts\ctl.bat (start /MIN /B C:\software-developer\php\subversion\scripts\ctl.bat STOP)
if exist C:\software-developer\php\jetty\scripts\ctl.bat (start /MIN /B C:\software-developer\php\jetty\scripts\ctl.bat STOP)
if exist C:\software-developer\php\hypersonic\scripts\ctl.bat (start /MIN /B C:\software-developer\php\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\software-developer\php\resin\scripts\ctl.bat (start /MIN /B C:\software-developer\php\resin\scripts\ctl.bat STOP)
if exist C:\software-developer\php\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\software-developer\php\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\software-developer\php\openoffice\scripts\ctl.bat (start /MIN /B C:\software-developer\php\openoffice\scripts\ctl.bat STOP)
if exist C:\software-developer\php\apache\scripts\ctl.bat (start /MIN /B C:\software-developer\php\apache\scripts\ctl.bat STOP)
if exist C:\software-developer\php\ingres\scripts\ctl.bat (start /MIN /B C:\software-developer\php\ingres\scripts\ctl.bat STOP)
if exist C:\software-developer\php\mysql\scripts\ctl.bat (start /MIN /B C:\software-developer\php\mysql\scripts\ctl.bat STOP)
if exist C:\software-developer\php\postgresql\scripts\ctl.bat (start /MIN /B C:\software-developer\php\postgresql\scripts\ctl.bat STOP)

:end

