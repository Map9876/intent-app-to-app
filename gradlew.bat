@rem
@rem Copyright 2009-2016 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@rem -----------------------------------------------------------------------------
@rem Gradle start up script for Windows
@rem -----------------------------------------------------------------------------

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
exit /b 1

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%

set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
exit /b 1

:init
@rem Get the full command line, including the arguments passed to this script
set CMD_LINE_ARGS=%*

@rem Collect all arguments for the Gradle process
set ALL_JVM_OPTS=%DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS%

@rem Collect all arguments for the Gradle process
set ALL_ARGS=%ALL_JVM_OPTS%

@rem Collect all arguments for the Gradle process
set ALL_PROPERTIES=

@rem Collect all arguments for the Gradle process
set ALL_SYSTEM_PROPERTIES=

@rem Collect all arguments for the Gradle process
set ALL_DAEMON_PROPERTIES=

@rem Collect all arguments for the Gradle process
set ALL_INIT_SCRIPTS=

@rem Collect the properties specified on the command line
for %%i in (%*) do (
  set ARG=%%i
  if "!ARG:~0,2!"=="-D" (
    set ALL_PROPERTIES=!ALL_PROPERTIES! %%i
  ) else if "!ARG:~0,2!"=="-I" (
    set ALL_INIT_SCRIPTS=!ALL_INIT_SCRIPTS! %%i
  ) else if "!ARG:~0,2!"=="-P" (
    set ALL_SYSTEM_PROPERTIES=!ALL_SYSTEM_PROPERTIES! %%i
  ) else if "!ARG!"=="--daemon" (
    set ALL_DAEMON_PROPERTIES=--daemon
  ) else (
    set ALL_ARGS=!ALL_ARGS! "%%i"
  )
)

@rem Set the full command to run the Gradle process
set FULL_COMMAND="%JAVA_EXE%" %ALL_JVM_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %ALL_PROPERTIES% %ALL_INIT_SCRIPTS% %ALL_SYSTEM_PROPERTIES% %ALL_DAEMON_PROPERTIES% %ALL_ARGS%

@rem Print the command for debugging
if "%GRADLE_PRINT_COMMAND%"=="true" (
  echo %FULL_COMMAND%
)

@rem Run the Gradle process
call %FULL_COMMAND%