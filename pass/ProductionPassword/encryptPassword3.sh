#!/bin/bash
echo "Enter New VM Password:"
read vmpassword
echo "Enter New Rcholine Password:"
read rchopassword
#echo "My password is:" $password
#echo "My password is:" $password2
path=~/ProductionPassword
#$echo $CLASSPATH
#javac encryptPassword.java
#jar cf Encrypt.jar encryptPassword.class
export CLASSPATH=$path/com.ibm.common.password.jar:$path/Encrypt.jar
java -cp $CLASSPATH -Xmx1024m encryptPassword $vmpassword temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > .x1A2220.encrypt.properties
java -cp $CLASSPATH -Xmx1024m encryptPassword $rchopassword temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > rcholine.properties
