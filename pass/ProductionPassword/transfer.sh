#!/bin/bash

#curl -L https://sourceforge.net/projects/sshpass/files/latest/download -o sshpass.tar.gz && tar xvzf sshpass.tar.gz
#cd sshpass-*
#./configure
#sudo make install
#rm -rf sshpass-*
####################################################################################################################################################################################################
echo "01"

scp ~/ProductionPassword/.coats.properties csp@g41xr00003181.az1.ash.cpc.ibm.com:~/.coats.properties
scp ~/ProductionPassword/.coats.properties csp@g42xr00003005.az2.ash.cpc.ibm.com:~/.coats.properties
scp ~/ProductionPassword/.omcs.properties wcii@g41xr00003181.az1.ash.cpc.ibm.com:~/.omcs.properties
scp ~/ProductionPassword/.omcs.properties wcii@g42xr00003005.az2.ash.cpc.ibm.com:~/.omcs.properties

#scp ~/ProductionPassword/.omcs.properties sovaprod@g41xr00003181.az1.ash.cpc.ibm.com:~/.omcs.properties
#scp ~/ProductionPassword/.omcs.properties sovaprod@g42xr00003005.az2.ash.cpc.ibm.com:~/.omcs.properties
####################################################################################################################################################################################################

echo "06"
#scp ~/ProductionPassword/.csp csp@rchmfgcp.az11.dal.cpc.ibm.com:~/.csp
#scp ~/ProductionPassword/.csp csp@rchmfgd.az1.ash.cpc.ibm.com:~/.csp
#scp ~/ProductionPassword/.csp csp@rchmfgt1.az1.ash.cpc.ibm.com:~/.csp 
scp ~/ProductionPassword/.csp csp@g41xr00003181.az1.ash.cpc.ibm.com:~/.csp 
scp ~/ProductionPassword/.csp csp@g42xr00003005.az2.ash.cpc.ibm.com:~/.csp 
scp ~/ProductionPassword/.csp csp@g51xr00002411.az11.dal.cpc.ibm.com:~/.csp 
scp ~/ProductionPassword/.csp csp@g41p-r-00000671.az1.ash.cpc.ibm.com:~/.csp 
scp ~/ProductionPassword/.csp csp@g41xr00001432.az1.ash.cpc.ibm.com:~/.csp
scp ~/ProductionPassword/.csp csp@g41xr00001432.az1.ash.cpc.ibm.com:~/.csp

####################################################################################################################################################################################################

scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g41xr00003181.az1.ash.cpc.ibm.com:~/.wcii.encrypt.properties
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g42xr00003005.az2.ash.cpc.ibm.com:~/.wcii.encrypt.properties
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g41xr00001078.az1.ash.cpc.ibm.com:~/.wcii.encrypt.properties
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g42xr00003004.az2.ash.cpc.ibm.com:~/.wcii.encrypt.properties
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g51xr00002408.az11.dal.cpc.ibm.com:~/.wcii.encrypt.properties
#scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g42xr00003004.az2.ash.cpc.ibm.com:~/.wcii.encrypt.properties

####################################################################################################################################################################################################
##### EDIT #########################################################################################################################################################################################
####################################################################################################################################################################################################

scp ~/ProductionPassword/.rchmfgc rchmfgc@rchmfgt1.az1.ash.cpc.ibm.com:~/.rchmfgc

####################################################################################################################################################################################################
echo "12"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/.netrc optools@rchcts1.rchland.ibm.com:~/private/.netrc
####################################################################################################################################################################################################
echo "13"

scp ~/ProductionPassword/.x1A2220.encrypt.properties wcii@g41xr00003181.az1.ash.cpc.ibm.com:~/.x1A2220.encrypt.properties
scp ~/ProductionPassword/.x1A2220.encrypt.properties wcii@g42xr00003005.az2.ash.cpc.ibm.com:~/.x1A2220.encrypt.properties
####################################################################################################################################################################################################
echo "14"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/rcholine.properties optools@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/private/properties/rcholine.properties
echo "15"
sshpass -p "U2eYWhW6pxeJXcw" scp optools@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/private/properties/rcholine.id ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id
cp ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id

cp ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id

####################################################################################################################################################################################################
##### EDIT #########################################################################################################################################################################################
####################################################################################################################################################################################################
echo "16"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/seotranslator.properties optools@rchgsa.ibm.com:/rchgsa-p2/02/ctscct/seotranslator/properties/seotranslator.properties
####################################################################################################################################################################################################
##### EDIT #########################################################################################################################################################################################
####################################################################################################################################################################################################
echo "17"
sshpass -p "U2eYWhW6pxeJXcw" scp optools@rchcts1.rchland.ibm.com:.optools ~/ProductionPassword/.optools
echo "18"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/.netrc optools@rchcts1.rchland.ibm.com:~/private/.netrc
echo "19"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/.optools optools@rchcts2.rchland.ibm.com:~/.optools
echo "20"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/.optools optools@rchmfgt1.az1.ash.cpc.ibm.com:/homeMfg/optools/.optools
echo "21"
sshpass -p "U2eYWhW6pxeJXcw" scp ~/ProductionPassword/.optools.encrypt.properties optools@rchmfgt1.az1.ash.cpc.ibm.com:/homeMfg/optools/.optools.encrypt.properties

####################################################################################################################################################################################################
##### NEW ##########################################################################################################################################################################################
####################################################################################################################################################################################################

echo "01"
#scp ~/ProductionPassword/.coats.properties csp@g41xr00003181.az1.ash.cpc.ibm.com:~/.coats.properties
echo "02"
scp ~/ProductionPassword/.omcs.properties wcii@g41xr00003181.az1.ash.cpc.ibm.com:~/.omcs.properties
echo "03"
scp ~/ProductionPassword/.coats.properties csp@g42xr00003005.az2.ash.cpc.ibm.com:~/.coats.properties
echo "04"
scp ~/ProductionPassword/.omcs.properties wcii@gg42xr00003005.az2.ash.cpc.ibm.com:~/.omcs.properties
####################################################################################################################################################################################################
echo "05"
#scp ~/ProductionPassword/.csp csp@g41xr00003181.az1.ash.cpc.ibm.com:~/.csp
echo "06"
scp ~/ProductionPassword/.csp csp@g42xr00003005.az2.ash.cpc.ibm.com:~/.csp
####################################################################################################################################################################################################
echo "09"
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g41xr00003181.az1.ash.cpc.ibm.com:~/.wcii.encrypt.properties
echo "10"
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g42xr00003005.az2.ash.cpc.ibm.com:~/.wcii.encrypt.properties
scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g51xr00002408.az11.dal.cpc.ibm.com:~/.wcii.encrypt.properties
echo "11"
#scp ~/ProductionPassword/.wcii.encrypt.properties wcii@g41xr00001078.az1.ash.cpc.ibm.com:~/.wcii.encrypt.properties
####################################################################################################################################################################################################

g41xr00003181.az1.ash.cpc.ibm.com
g42xr00003005.az2.ash.cpc.ibm.com


# ssh rchmfg@rchmfg0.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh sovaprod@rchmfg0.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh sovaprod@rchmfg1.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh rchmfg@rchmfg1.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh sovaprod@sas001.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh sovaprod@sas002.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date
# ------------------------------------------------
# ssh sovaprod@rchcsp01.pok.ibm.com
# gsa_logger -i gsa/optools.pwd
96ggAwvRCUF9mme
# gsa_logger optools gsa/optools.pwd date

# ------------------------------------------------

# ssh optools@rchmfgt1.az1.ash.cpc.ibm.com
# aclput.optools.encrypt.properties < /homeMfg/optools/mqUtil/ue.acl

# ------------------------------------------------

# cd ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files 
# cd ~/Library/Application\ Support/HCL\ Notes\ Data 

#cp ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id

#cp ~/Library/CloudStorage/Box-Box/CTS\ Team/Notes\ ID\ Files/rcholine.id ~/Library/Application\ Support/HCL\ Notes\ Data/rcholine.id

sshpass -v -p "U2eYWhW6pxeJXcw" scp -r ~/Desktop/au optools@g53pa00005253.az13.dal.cpc.ibm.com