package de.axnx;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.lang3.StringEscapeUtils;

public class FileUtils {
	
	public static boolean fileExists(String filePathString){
    	File f = new File(filePathString);
    	if(f.exists() && !f.isDirectory()) { 
    		return true;
    	} else {
    		return false;
    	}   
    }
	
	public static Properties readProperties(String propertiesFileString){
		
		Properties prop = new Properties();
		InputStream inputStream = null;

		try {
			prop.load(new FileInputStream(propertiesFileString));
			//inputStream = new FileInputStream(propertiesFileString);
			//prop.load(inputStream);
			//inputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		

		// get the property value and print it out
		System.out.println(StringEscapeUtils.escapeJava(prop.getProperty("path1")));
		System.out.println(prop.getProperty("path2"));
		return prop;
		
	}
	
	public static void writeProperties(String filename, Properties props, String header){
				
		header = (header==null) ? "" : header;
			
		try {
	        FileOutputStream outputStream = new FileOutputStream(filename);
	        props.store(outputStream, header);
	        outputStream.close();
	    }
	    catch (Exception e ) {
	        e.printStackTrace();
	    }
	
	}
	
}
	

