package com.dsw.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class ImageUtil {
	
	public static String upload(File file, String fileName, String identification, String saveDir){
		if(file != null){
			String realPath = ServletActionContext.getServletContext().getRealPath(saveDir);
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			if (fileName.lastIndexOf(".") == -1 || !suffix.equals(".jpg")) {  
                throw new SecurityException("Iamge format error!") ;
            }  
            String newFileName = identification + System.currentTimeMillis() + suffix;   
            File savefile = new File(new File(realPath), newFileName);  
            if (!savefile.getParentFile().exists()){ 
                savefile.getParentFile().mkdirs(); 
            }
            FileOutputStream fos=null;
            FileInputStream fis = null;
            try {
            	byte[] buffer=new byte[1024];
                fos=new FileOutputStream(savefile);
                fis = new FileInputStream(file);
                while(fis.read(buffer)!=-1){
                    fos.write(buffer);
                    fos.flush();
                }
                return savefile.getAbsolutePath();
            } catch (Exception e) {
                e.printStackTrace();
            } finally{
                try {
                	if(fis != null){
                		fis.close();
                	}
                    if(fos!=null){
                        fos.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }	
		}
		return null;
	}
	
	public static void writeImage(String filePath, HttpServletResponse response){
        File imageFile = new File(filePath); 
        if(imageFile!=null && imageFile.exists()){
            byte[] buffer=new byte[1024];
            InputStream is=null;
            OutputStream os=null;
            try {
                is=new FileInputStream(imageFile);
                os=response.getOutputStream();
                while(is.read(buffer)!=-1){
                    os.write(buffer);
                    os.flush();
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } finally{
                try {
                    if(is!=null){
                    	is.close();
                    }
                    if(os!=null){
                    	os.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}