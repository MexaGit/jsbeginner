#********************************************** Artifactory dependencies *****************************************************************

#config server id
jfrog rt config --url=https://na.artifactory.swg-devops.com/artifactory  --apikey=$JFROG_APIKEY jfrog-cts-server

#use command
#jfrog rt use jfrog-cts-server

#Download and unpack staticJars from jFrog with CLI
jfrog rt dl --url https://na.artifactory.swg-devops.com/artifactory --user=$W3ID --apikey $JFROG_APIKEY gbs-cio-mfgcfg-team-warriors-maven-local/staticJars/    

#Download and unpack Eclipse_Development_Targets
jfrog rt dl --url https://na.artifactory.swg-devops.com/artifactory --user $W3ID --apikey $JFROG_APIKEY gbs-cio-mfgcfg-team-warriors-maven-local/Eclipse_Development_Targets/ 

#unpack file
tar -xzvf ./Eclipse_Development_Targets/4.4.2.tgz -C ./Eclipse_Development_Targets               

#Delete file
rm ./Eclipse_Development_Targets/4.4.2.tgz  

#Download and unpack xmlBeans
jfrog rt dl --url https://na.artifactory.swg-devops.com/artifactory --user $W3ID --apikey $JFROG_APIKEY --flat=true gbs-cio-mfgcfg-team-warriors-maven-local/xmlBeans/ 

#unpack file
tar -xzf ./xmlBeans.tgz        

#Delete file
rm ./xmlBeans.tgz                       
	
#USAGE: jfrog target command-name global-options command-options arguments

#target: The product on which you wish to execute the command:
#        
#    rt: JFrog Artifactory  

#Download command: download or dl      

#--explode unpack the tars
