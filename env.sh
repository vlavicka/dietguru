export DESTINATION=${PWD}/_class
export JUNITVERSION=`ls ~/projects | sed -n -e "s/^junit\(.*\)$/\1/p"`
export CLASSPATH=~/projects/junit${JUNITVERSION}/junit-${JUNITVERSION}.jar:~/projects/junit${JUNITVERSION}:$DESTINATION
