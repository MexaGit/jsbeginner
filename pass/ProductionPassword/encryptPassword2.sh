#!/bin/bash
echo "Enter New Password:"
read password
echo "My password is:" $password
path=~/ProductionPassword

#javac encryptPassword.java
#jar cf Encrypt.jar encryptPassword.class
export CLASSPATH=$path/com.ibm.common.password.jar:$path/Encrypt.jar
echo $CLASSPATH
#java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties
java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > omcs.properties
cp omcs.properties .coats.properties
cp omcs.properties .omcs.properties
cp omcs.properties .csp
cp omcs.properties .wcii.encrypt.properties
