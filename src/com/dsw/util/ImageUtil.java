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
			String contextPath = ServletActionContext.getServletContext().getRealPath(saveDir);
			String realPath = "C:\\Users\\bsn\\Desktop\\¥¯…œŒ“Server\\DaiShangWo\\web\\photo";
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			if (fileName.lastIndexOf(".") == -1 || !suffix.equals(".jpg")) {  
                throw new SecurityException("Iamge format error!") ;
            }  
            String newFileName = identification + System.currentTimeMillis() + suffix;   
            File saveFile = new File(new File(realPath), newFileName);  
            if (!saveFile.getParentFile().exists()){ 
                saveFile.getParentFile().mkdirs(); 
            }
            
            File copyFile = new File(new File(contextPath), newFileName);  
            if (!copyFile.getParentFile().exists()){ 
                copyFile.getParentFile().mkdirs(); 
            }
            FileInputStream fis = null;
            FileOutputStream fos=null;
            
            FileInputStream copyFin = null;
            FileOutputStream copyFos  = null;
            try {
            	byte[] buffer1=new byte[1024];
                fos=new FileOutputStream(saveFile);
                fis = new FileInputStream(file);
                while(fis.read(buffer1)!=-1){
                    fos.write(buffer1);
                    fos.flush();        
                }
                byte[] buffer2=new byte[1024];
                copyFin = new FileInputStream(file);
                copyFos = new FileOutputStream(copyFile);
                while(copyFin.read(buffer2)!=-1){
                    copyFos.write(buffer2);
                    copyFos.flush();        
                }
                return newFileName;
                //return copyFile.getAbsolutePath();
            } catch (Exception e) {
                e.printStackTrace();
            } finally{
                try {
                	if(fis != null){
                		fis.close();
                	}
                    if(fos != null){
                        fos.close();
                    }
                    if(copyFin != null){
                    	copyFin.close();
                    }
                    if(copyFos != null){
                    	copyFos.close();
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