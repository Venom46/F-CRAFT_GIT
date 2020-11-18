@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  SnehaHastha_Begginer startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and SNEHA_HASTHA_BEGGINER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\SnehaHastha_Begginer.jar;%APP_HOME%\lib\selenium-java-3.6.0.jar;%APP_HOME%\lib\poi-ooxml-3.17.jar;%APP_HOME%\lib\extentreports-2.41.2.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\webdrivermanager-4.1.0.jar;%APP_HOME%\lib\jfiglet-0.0.8.jar;%APP_HOME%\lib\junit-jupiter-api-5.3.0-M1.jar;%APP_HOME%\lib\javafaker-1.0.2.jar;%APP_HOME%\lib\testng-6.14.3.jar;%APP_HOME%\lib\selenium-chrome-driver-3.6.0.jar;%APP_HOME%\lib\selenium-edge-driver-3.6.0.jar;%APP_HOME%\lib\selenium-firefox-driver-3.6.0.jar;%APP_HOME%\lib\selenium-ie-driver-3.6.0.jar;%APP_HOME%\lib\selenium-opera-driver-3.6.0.jar;%APP_HOME%\lib\selenium-safari-driver-3.6.0.jar;%APP_HOME%\lib\selenium-support-3.6.0.jar;%APP_HOME%\lib\selenium-remote-driver-3.6.0.jar;%APP_HOME%\lib\selenium-api-3.6.0.jar;%APP_HOME%\lib\byte-buddy-1.7.5.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\httpclient-4.5.3.jar;%APP_HOME%\lib\poi-3.17.jar;%APP_HOME%\lib\httpclient5-5.0.1.jar;%APP_HOME%\lib\commons-codec-1.13.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\guava-23.0.jar;%APP_HOME%\lib\httpcore-4.4.6.jar;%APP_HOME%\lib\jna-platform-4.1.0.jar;%APP_HOME%\lib\jna-4.1.0.jar;%APP_HOME%\lib\poi-ooxml-schemas-3.17.jar;%APP_HOME%\lib\curvesapi-1.04.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\sqlite-jdbc-3.8.11.1.jar;%APP_HOME%\lib\freemarker-2.3.23.jar;%APP_HOME%\lib\mongodb-driver-3.0.4.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\commons-io-2.7.jar;%APP_HOME%\lib\commons-lang3-3.10.jar;%APP_HOME%\lib\jarchivelib-1.0.0.jar;%APP_HOME%\lib\junit-platform-commons-1.3.0-M1.jar;%APP_HOME%\lib\apiguardian-api-1.0.0.jar;%APP_HOME%\lib\opentest4j-1.1.0.jar;%APP_HOME%\lib\snakeyaml-1.23-android.jar;%APP_HOME%\lib\generex-1.0.2.jar;%APP_HOME%\lib\jcommander-1.72.jar;%APP_HOME%\lib\bsh-2.0b6.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\commons-collections4-4.1.jar;%APP_HOME%\lib\xmlbeans-2.6.0.jar;%APP_HOME%\lib\mongodb-driver-core-3.0.4.jar;%APP_HOME%\lib\bson-3.0.4.jar;%APP_HOME%\lib\httpcore5-h2-5.0.1.jar;%APP_HOME%\lib\httpcore5-5.0.1.jar;%APP_HOME%\lib\commons-compress-1.18.jar;%APP_HOME%\lib\automaton-1.11-8.jar;%APP_HOME%\lib\stax-api-1.0.1.jar


@rem Execute SnehaHastha_Begginer
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SNEHA_HASTHA_BEGGINER_OPTS%  -classpath "%CLASSPATH%" driver.Driver %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SNEHA_HASTHA_BEGGINER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SNEHA_HASTHA_BEGGINER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
