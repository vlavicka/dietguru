#!/bin/bash

export DESTINATION=${PWD}/_class
export JUNITVERSION=`ls ~/projects | sed -n -e "s/^junit\(.*\)$/\1/p"`
export CLASSPATH=~/projects/junit${JUNITVERSION}/junit-${JUNITVERSION}.jar:~/projects/junit{$JUNITVERSION}:_class

javac -d ${DESTINATION} source/*.java || { echo "Error while compiling"; exit 1; }

if [ "$1" == "test" ]; then
    for file in source/*Test.java; do
        FILENAME=`echo $file | sed -n -e "s/^.*\/\([A-Za-z0-9]*\).java$/\1/p"`
        java org.junit.runner.JUnitCore net.cantooce.dietguru.test.$FILENAME
    done
else
    java net.cantooce.dietguru.DietGuru
fi


