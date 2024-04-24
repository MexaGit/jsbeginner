#!/bin/bash

#curl -L https://sourceforge.net/projects/sshpass/files/latest/download -o sshpass.tar.gz && tar xvzfsshpass.tar.gz
#cd sshpass-*
#./configure
#sudo make install
#rm -rf sshpass-*

echo "01"
scp csp@rchcsp01.pok.ibm.com:~/.coats.properties ~/ProductionPassword/Test/01.txt
ssh csp@rchcsp01.pok.ibm.com 'ls -l .coats.properties' | awk '{print $6,$7,$8,$9}'
echo "02"
scp wcii@rchcsp01.pok.ibm.com:~/.omcs.properties ~/ProductionPassword/Test/02.txt
ssh wcii@rchcsp01.pok.ibm.com 'ls -l .omcs.properties' | awk '{print $6,$7,$8,$9}'
echo "03"
scp sovaprod@rchcsp01.pok.ibm.com:~/.omcs.properties ~/ProductionPassword/Test/03.txt
ssh sovaprod@rchcsp01.pok.ibm.com 'ls -l .omcs.properties'| awk '{print $6,$7,$8,$9}'
####################################################################################################################################################################################################
echo "04"
scp csp@rchcsp01.pok.ibm.com:~/.csp ~/ProductionPassword/Test/04.txt
ssh csp@rchcsp01.pok.ibm.com 'ls -l .csp' | awk '{print $6,$7,$8,$9}'
echo "05"
scp csp@rchmfgc1.pok.ibm.com:~/.csp ~/ProductionPassword/Test/05.txt
ssh csp@rchmfgc1.pok.ibm.com 'ls -l .csp' | awk '{print $6,$7,$8,$9}'
echo "06"
scp csp@rchmfgcp.az11.dal.cpc.ibm.com:~/.csp ~/ProductionPassword/Test/06.txt 
ssh csp@rchmfgcp.az11.dal.cpc.ibm.com 'ls -l .csp' | awk '{print $6,$7,$8,$9}'
echo "07"
scp csp@rchmfgd.az1.ash.cpc.ibm.com:.csp ~/ProductionPassword/Test/07.txt 
ssh csp@rchmfgd.az1.ash.cpc.ibm.com 'ls -l .csp' | awk '{print $6,$7,$8,$9}'
echo "08"
scp csp@rchmfgt1.az1.ash.cpc.ibm.com:.csp ~/ProductionPassword/Test/08.txt
ssh csp@rchmfgt1.az1.ash.cpc.ibm.com 'ls -l .csp' | awk '{print $6,$7,$8,$9}'
####################################################################################################################################################################################################
echo "09"
scp wcii@rchcsp01.pok.ibm.com:~/.wcii.encrypt.properties ~/ProductionPassword/Test/09.txt
ssh wcii@rchcsp01.pok.ibm.com 'ls -l .wcii.encrypt.properties' | awk '{print $6,$7,$8,$9}'
echo "10"
scp wcii@rchmfgc1.pok.ibm.com:~/.wcii.encrypt.properties ~/ProductionPassword/Test/10.txt
ssh wcii@rchmfgc1.pok.ibm.com 'ls -l .wcii.encrypt.properties' | awk '{print $6,$7,$8,$9}'
####################################################################################################################################################################################################
##### EDIT #########################################################################################################################################################################################
echo "11"
scp rchmfgc@rchmfgt1.az1.ash.cpc.ibm.com:~/.rchmfgc ~/ProductionPassword/Test/11.txt
ssh rchmfgc@rchmfgt1.az1.ash.cpc.ibm.com 'ls -l .rchmfgc' | awk '{print $6,$7,$8,$9}'
####################################################################################################################################################################################################
####################################################################################################################################################################################################
echo "12"
scp wcii@rchcsp01.pok.ibm.com:~/.x1A2220.encrypt.properties ~/ProductionPassword/Test/12.txt
ssh wcii@rchcsp01.pok.ibm.com 'ls -l ~/.x1A2220.encrypt.properties' | awk '{print $6,$7,$8,$9}'
####################################################################################################################################################################################################
echo "13"
sshpass -v -p "3WPteRixkgmiid2" scp pepe1@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/private/properties/rcholine.properties ~/ProductionPassword/Test/13.txt 
echo "14"
sshpass -p "3WPteRixkgmiid2" scp pepe1@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/private/properties/rcholine.id ~/ProductionPassword/Test/14.txt 
##### EDIT ########################################################################################################################################################################################
echo "15"
sshpass -p "3WPteRixkgmiid2" scp pepe1@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/seotranslator/properties/seotranslator.properties ~/ProductionPassword/Test/15.txt 
##### EDIT #########################################################################################################################################################################################
echo "16"
sshpass -p "DMiye24MGK9kKta" scp optools@rchcts1.rchland.ibm.com:/home/.optools ~/ProductionPassword/Test/16.txt
sshpass -p "DMiye24MGK9kKta" ssh -o StrictHostKeyChecking=no optools@rchcts1.rchland.ibm.com 'ls -l /home/.optools' | awk '{print $6,$7,$8,$9}'
echo "17"
sshpass -p "DMiye24MGK9kKta" scp optools@rchcts1.rchland.ibm.com:~/private/.netrc ~/ProductionPassword/Test/17.txt
sshpass -p "DMiye24MGK9kKta" ssh -o StrictHostKeyChecking=no optools@rchcts1.rchland.ibm.com 'ls -l ~/private/.netrc' | awk '{print $6,$7,$8,$9}'
echo "18"
sshpass -p "DMiye24MGK9kKta" scp optools@rchcts2.rchland.ibm.com:/home/.optools ~/ProductionPassword/Test/18.txt
sshpass -p "DMiye24MGK9kKta" ssh -o StrictHostKeyChecking=no optools@rchcts2.rchland.ibm.com 'ls -l /home/.optools' | awk '{print $6,$7,$8,$9}'
echo "19"
sshpass -p "DMiye24MGK9kKta" scp optools@rchmfgt1.az1.ash.cpc.ibm.com:/homeMfg/optools/.optools ~/ProductionPassword/Test/19.txt
sshpass -p "DMiye24MGK9kKta" ssh -o StrictHostKeyChecking=no optools@rchmfgt1.az1.ash.cpc.ibm.com 'ls -l /homeMfg/optools/.optools' | awk '{print $6,$7,$8,$9}'
echo "20"
sshpass -p "DMiye24MGK9kKta" scp optools@rchmfgt1.az1.ash.cpc.ibm.com:/homeMfg/optools/.optools.encrypt.properties ~/ProductionPassword/Test/20.txt
sshpass -p "DMiye24MGK9kKta" ssh -o StrictHostKeyChecking=no optools@rchmfgt1.az1.ash.cpc.ibm.com 'ls -l /homeMfg/optools/.optools.encrypt.properties' | awk '{print $6,$7,$8,$9}'

## reqauth -newauth -user wuji@rchland.ibm.com -pr mfc -level ProdBase -item CMVC -just "New eConfig Developer" 




# -------------------------------------

#ssh rchmfg@rchmfg0.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
optools CTAZbrXq7FnxHJ7

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh sovaprod@rchmfg0.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh sovaprod@rchmfg1.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh rchmfg@rchmfg1.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh sovaprod@sas001.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh sovaprod@sas002.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
#ssh sovaprod@rchcsp01.pok.ibm.com
# gsa_logger -i gsa/optools.pwd

# gsa_logger optools gsa/optools.pwd date

# ------------------------------------------------

#ssh optools@rchmfgt1.az1.ash.cpc.ibm.com
# aclput.optools.encrypt.properties < /homeMfg/optools/mqUtil/ue.acl

# ------------------------------------------------

# cd ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files 
# cd ~/Library/Application\ Support/HCL\ Notes\ Data 

#cp ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id

#cp ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id