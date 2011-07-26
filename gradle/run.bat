set GRADLE_HOME=D:\Tooldev\gradle-1.0-milestone-3
set JAVA_HOME=c:\opt\jdk

set JAVA_OPTS=-Dgroovy.source.encoding=UTF-8 -Dfile.encoding=UTF-8
set PATH=%GRADLE_HOME%/bin;%JAVA_HOME%/bin


::set R_HOME=C:/opt/R-2.13.0
::set RJAVA_HOME=%R_HOME%/library/rJava/jri
::set JAVA_OPTS=-Djava.library.path=%RJAVA_HOME%
::echo %JAVA_OPTS%
::call gradle clean jar
call gradle %*

