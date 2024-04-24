#!/bin/bash

#echo "Enter New Password:"

while getopts p:v:r:o: flag
do
    case "${flag}" in
        p) password=${OPTARG};;
        v) vmpassword=${OPTARG};;
        r) rchopassword=${OPTARG};;
        o) optpassword=${OPTARG};;
    esac
done

# ecryptPassword2.sh

path=~/ProductionPassword

#javac encryptPassword.java
#jar cf Encrypt.jar encryptPassword.class
export CLASSPATH=$path/com.ibm.common.password.jar:$path/Encrypt.jar
#echo $CLASSPATH
#java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties
java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > omcs.properties
printf "\nPassword Functional: \n"
echo $password
printf "Encrypted Password Functional: \n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' omcs.properties
printf "\n"
cp omcs.properties .coats.properties
cp omcs.properties .omcs.properties
cp omcs.properties .csp
cp omcs.properties .wcii.encrypt.properties
echo $password > .rchmfgc

# ecryptPassword3.sh

java -cp $CLASSPATH -Xmx1024m encryptPassword $vmpassword temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > .x1A2220.encrypt.properties
printf "\nPassword VM: \n"
echo $vmpassword
printf "Encrypted Password VM:\n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' .x1A2220.encrypt.properties
printf "\n"
# Second Part
java -cp $CLASSPATH -Xmx1024m encryptPassword $rchopassword temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > rcholine.properties
printf "\nPassword RCHOLINE: \n"
echo $rchopassword
printf "Encrypted Password RCHOLINE:\n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' rcholine.properties
printf "\n"
ep=$(ps -ef | awk -F "EncryptedPassword=" 'NR==3 {print $2}' optoolsitim.properties )
echo "t1Dir=C:\\CTS\\Templates\\T1\\" > seotranslator.properties
echo "resultLocation=." >> seotranslator.properties
echo "com.ibm.bhc.seotranslator.template.gsa.loc=X:/seotranslator/templates/" >> seotranslator.properties
echo "com.ibm.bhc.seotranslator.notes.password=${ep}" >> seotranslator.properties


# ecryptPassword4.sh

java -cp $CLASSPATH -Xmx1024m encryptPassword $optpassword temp.properties
cat temp.properties | tr '\r' '\n' | tr -s '\n' > optoolsitim.properties
printf "\nPassword optools: \n"
echo $optpassword
printf "Encrypted Password optools:\n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' optoolsitim.properties
printf "\n"
cp optoolsitim.properties optools.properties
cp optoolsitim.properties gsa.properties
cp optoolsitim.properties afs.properties
cp optoolsitim.properties .optools.encrypt.properties


echo "File created: .coats.properties created"
echo "File created: .omcs.properties"
echo "File created: .csp"
echo "File created: .wcii.encrypt.properties"
echo "File created: .rchmfgc"

echo "File created: .x1A2220.encrypt.properties"
echo "File created: rcholine.properties"
echo "File created: seotranslator.properties"

echo "File created: optools.properties"
echo "File created: gsa.properties"
echo "File created: afs.properties"
echo "File created: .optools.encrypt.properties"

rm temp.properties
rm optoolsitim.properties
rm omcs.properties

#ls -als | awk 'NR<15 && NR>4 {print $10}'   