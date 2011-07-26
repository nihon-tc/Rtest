set VISUAL_STUDIO_HOME=../header/Microsoft Visual Studio 10.0
set WINDOWS_SDK_HOME=../header/Microsoft SDKs/Windows/v7.0A

::java -jar libs/jnaerator-0.9.5.jar ^
::-library R ^
::./inc/R_ext/GraphicsEngine.h ^
::./inc/R_ext/Applic.h ^
::./inc/R_ext/Arith.h ./inc/R_ext/BLAS.h ^
::./inc/R_ext/Boolean.h ./inc/R_ext/Callbacks.h ./inc/R_ext/Complex.h ./inc/R_ext/Constants.h ./inc/R_ext/Error.h ./inc/R_ext/eventloop.h ^
::./inc/R_ext/GetX11Image.h ./inc/R_ext/GraphicsDevice.h ^
::./inc/R_ext/Lapack.h ./inc/R_ext/libextern.h ./inc/R_ext/Linpack.h ^
::./inc/R_ext/Memory.h ./inc/R_ext/Parse.h ./inc/R_ext/Print.h ./inc/R_ext/PrtUtil.h ./inc/R_ext/QuartzDevice.h ./inc/R_ext/R-ftp-http.h ./inc/R_ext/Random.h ^
::./inc/R_ext/RConverters.h ./inc/R_ext/Rdynload.h ./inc/R_ext/Riconv.h ./inc/R_ext/rlocale.h ./inc/R_ext/RS.h ./inc/R_ext/RStartup.h ./inc/R_ext/stats_package.h ^
::./inc/R_ext/stats_stubs.h ./inc/R_ext/Utils.h ./inc/R_ext/Visibility.h ^
::./inc/ga.h ./inc/graphapp.h ./inc/iconv.h ./inc/libintl.h ./inc/R.h ./inc/Rconfig.h ./inc/Rdefines.h ./inc/Rembedded.h ^
::./inc/Rinternals.h ./inc/Rmath.h ./inc/Rversion.h ./inc/S.h ./inc/zconf.h ./inc/zlib.h ^
::master/win32/R.dll master/win32/Rblas.dll master/win32/Rgraphapp.dll master/win32/Riconv.dll master/win32/Rlapack.dll master/win32/Rzlib.dll ^
::-o ./tmp -I./inc -jar dist/R.jar

java -jar libs/jnaerator-0.9.5.jar ^
-library R ^
./inc/*.h ./inc/R_ext/*.h ^
-arch win32 ^
master/win32/R.dll ^
-o ./tmp -I./inc ^
-jar dist/R.jar -v



::master/win32/*.dll ^
::-defaultLibrary R ^

