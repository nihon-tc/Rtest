:: nessesary R install(check at R-2.13.0)
:: rJava 0.9.0 download http://www.rforge.net/rJava/files/
:: rjava untar , located R_HOME/library

set JAVA_HOME=C:/opt/jdk
::set JAVA_OPTS=-Dgroovy.source.encoding=UTF-8 -Dfile.encoding=UTF-8

set R_HOME=C:/opt/R-2.13.0
:: need append %R_HOME%/bin/i386
set PATH=%R_HOME%/bin;%R_HOME%/bin/i386
set R_DOC_DIR=%R_HOME%/doc
set R_INCLUDE_DIR=%R_HOME%/include
set R_SHARE_DIR=%R_HOME%/share

set RJAVA_HOME=%R_HOME%/library/rJava/jri
set JAVA_OPTS=-Djava.library.path="%RJAVA_HOME%"

%JAVA_HOME%/bin/java %JAVA_OPTS% -cp ".;./lib/*;%RJAVA_HOME%/*" groovy.ui.GroovyMain jritest.groovy

pause
