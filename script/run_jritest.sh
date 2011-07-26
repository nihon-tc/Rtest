#  nessesary R install
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

R_HOME=/usr/share/R-2.13.0
export R_HOME
# need append %R_HOME%/bin/i386
export PATH=$PATH:$R_HOME/bin:$R_HOME/bin/i386
#export R_DOC_DIR=$R_HOME/doc
export R_INCLUDE_DIR=$R_HOME/include
export R_SHARE_DIR=$R_HOME/share

export RJAVA_HOME=$R_HOME/library/rJava/jri

JAVA_OPTS='-Dgroovy.source.encoding=UTF-8 -Dfile.encoding=UTF-8'
JAVA_OPTS=$JAVA_OPTS:'-Djava.library.path=$RJAVA_HOME'


$JAVA_HOME/bin/java $JAVA_OPTS -cp ".:./lib/*:$RJAVA_HOME/*" groovy.ui.GroovyMain jritest.groovy

