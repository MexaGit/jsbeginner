/* File encryptPassword.java created by Andrew Tolbert,3D2373 on Thu Feb  9 2006.
   Classification:  IBM Confidential
   Copyright IBM Corp 2006
   Licensed material - Program property of IBM
   Refer to copyright instructions form no. G120-2083
   Encrypts a password to a properties file with property "EncryptedPassword"
   Usage: encryptPassword password passFile
*/
import com.ibm.common.password.Decode;
import java.util.Properties;
import java.io.FileOutputStream;
import java.io.File;
import java.io.IOException;

public class encryptPassword {
    public static void main(String args[]) {
	if(args.length < 2){
	    System.out.println("Incorrect Usage: encryptPassword password passFile");
	    return;
	}
	try{
	    Properties passwordFile = new Properties();
	    Decode decodeAgent = new Decode();
	    passwordFile.setProperty("EncryptedPassword", decodeAgent.EncodeString(args[0]));
	    passwordFile.store(new FileOutputStream(new File(args[1])),"Password");
	}catch(Exception e){
	    System.out.println("There was an error");
	    e.printStackTrace();
	}
	System.out.println("Completed.  Encrypted password in " + args[1]);
    }
}
