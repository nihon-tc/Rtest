cd /d %0\..

::'jna.library.path'
::'java.library.path'

::set GNUSTEP_HOME=D:\Tooldev\GNUstep
::set VISUAL_STUDIO_INCLUDES=%GNUSTEP_HOME%/GNUstep/System/Library/Headers

::set VISUAL_STUDIO_HOME=C:\Program Files\Microsoft Visual Studio 10.0
::set WINDOWS_SDK_HOME=C:\Program Files\Microsoft SDKs\Windows\v7.0A
set VISUAL_STUDIO_HOME=../header/Microsoft Visual Studio 10.0
set WINDOWS_SDK_HOME=../header/Microsoft SDKs/Windows/v7.0A

set JAVA_HOME=c:\opt\jdk
set INCPATH=./inc_old

set CMD_OPT=-library R 
set CMD_OPT=%CMD_OPT% %INCPATH%/R.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rconfig.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rmath.h

set CMD_OPT=%CMD_OPT% %INCPATH%/Rdefines.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rdevices.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rembedded.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rgraphics.h
set CMD_OPT=%CMD_OPT% %INCPATH%/Rversion.h

::not good convert
::set CMD_OPT=%CMD_OPT% %INCPATH%/Rinternals.h
set CMD_OPT=%CMD_OPT% %INCPATH%/rproxy.h


set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Arith.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Boolean.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Complex.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Constants.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Error.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/libextern.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Memory.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Print.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Random.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/RS.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/Utils.h
set CMD_OPT=%CMD_OPT% %INCPATH%/R_ext/PrtUtil.h

set DLLPATH=master/win32_old
set CMD_OPT=%CMD_OPT% %DLLPATH%/R.dll
set CMD_OPT=%CMD_OPT% %DLLPATH%/Rblas.dll 
set CMD_OPT=%CMD_OPT% %DLLPATH%/Rproxy.dll
set CMD_OPT=%CMD_OPT% %DLLPATH%/Rlapack.dll

::%JAVA_HOME%/bin/java -jar libs/jnaerator-0.9.5.jar %CMD_OPT% -o . -I./inc -jar dist/R.jar -v
%JAVA_HOME%/bin/java -jar libs/jnaerator-0.9.5.jar %CMD_OPT% -o . -I./inc -jar dist/R.jar


