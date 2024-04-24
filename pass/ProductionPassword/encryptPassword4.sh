#!/bin/bash
echo "Enter New Password:"
read password
#echo "My password is:" $password
path=~/ProductionPassword
#$echo $CLASSPATH
#javac encryptPassword.java
#jar cf Encrypt.jar encryptPassword.class
export CLASSPATH=$path/com.ibm.common.password.jar:$path/Encrypt.jar
java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > optoolsitim.properties
cp optoolsitim.properties optools.properties
cp optoolsitim.properties gsa.properties
cp optoolsitim.properties afs.properties
cp optoolsitim.properties .optools.encrypt.properties
