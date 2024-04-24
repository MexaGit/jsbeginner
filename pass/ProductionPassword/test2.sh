#!/bin/bash

while true; do
    echo "Enter New Common Password (15 char):"
    read password
    case ${#password} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New VM Password (15 char):"
    read vmpassword
    case ${#vmpassword} in
        0)
        echo 'VM Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'VM Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New Rcholine Password (8 char)"
    read rchopassword
    case ${#rchopassword} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        8)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New Optools Password (15 char):"
    read optpassword
    case ${#optpassword} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done

# Common Imports, Exports, and Variables

printf "\n"
path=~/ProductionPassword
export CLASSPATH=$path/com.ibm.common.password.jar:$path/Encrypt.jar

# ecryptPassword2.sh

java -cp $CLASSPATH -Xmx1024m encryptPassword $password temp.properties

cat temp.properties | tr '\r' '\n' | tr -s '\n' > omcs.properties

printf "\nCommon Password: \n"
echo $password
printf "Encrypted Common Password: \n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' omcs.properties
printf "\n"

printf "\nCommon Password: \n" > passwords.properties
echo $password >> passwords.properties
printf "Encrypted Common Password: \n" >> passwords.properties
awk -F "EncryptedPassword=" 'NR==3 {print $2}' omcs.properties >> passwords.properties
printf "\n" >> passwords.properties

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

printf "\nPassword VM: \n" >> passwords.properties
echo $vmpassword >> passwords.properties
printf "Encrypted Password VM:\n" >> passwords.properties
awk -F "EncryptedPassword=" 'NR==3 {print $2}' .x1A2220.encrypt.properties >> passwords.properties
printf "\n" >> passwords.properties

# Second Part

java -cp $CLASSPATH -Xmx1024m encryptPassword $rchopassword temp.properties

cat temp.properties | tr '\r' '\n' | tr -s '\n' > rcholine.properties

printf "\nPassword RCHOLINE: \n"
echo $rchopassword
printf "Encrypted Password RCHOLINE:\n"
awk -F "EncryptedPassword=" 'NR==3 {print $2}' rcholine.properties
printf "\n"

printf "\nPassword RCHOLINE: \n" >> passwords.properties
echo $rchopassword >> passwords.properties
printf "Encrypted Password RCHOLINE:\n" >> passwords.properties
awk -F "EncryptedPassword=" 'NR==3 {print $2}' rcholine.properties >> passwords.properties
printf "\n" >> passwords.properties

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

printf "\nPassword optools: \n" >> passwords.properties
echo $optpassword >> passwords.properties
printf "Encrypted Password optools:\n" >> passwords.properties
awk -F "EncryptedPassword=" 'NR==3 {print $2}' optoolsitim.properties >> passwords.properties
printf "\n" >> passwords.properties

echo "machine rchmfg2.rchland.ibm.com login labnewc password ${password}" > .netrc
echo "machine rchmfg3.rchland.ibm.com login labnewc password ${password}" >> .netrc
echo "machine rchcts1.rchland.ibm.com login optools password ${optpassword}" >> .netrc
echo "machine rchcts2.rchland.ibm.com login optools password ${optpassword}" >> .netrc

cp optoolsitim.properties optools.properties
cp optoolsitim.properties gsa.properties
cp optoolsitim.properties afs.properties
cp optoolsitim.properties .optools.encrypt.properties

ls -l omcs.properties | awk '{print $6,$7,$8,$9}' > files.log 
ls -l .coats.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .omcs.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .csp | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .wcii.encrypt.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .rchmfgc | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .x1A2220.encrypt.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l rcholine.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l seotranslator.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l optoolsitim.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l optools.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l gsa.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l afs.properties | awk '{print $6,$7,$8,$9}' >> files.log 
ls -l .optools.encrypt.properties | awk '{print $6,$7,$8,$9}' >> files.log 


