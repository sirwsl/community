package com.wsl.until;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

/**
 * @program: community
 * @description: 文件操作（上传、下载、删除）
 * @author: wangshilei
 * @create: 2020-05-27 11:18
 **/

@Component
public class FiletoolImpl implements filetool {

    @Override
    public String uploadMetting(MultipartFile file) {
        String filePath = "/books/metting/";
        return upload(file,filePath);
    }

    @Override
    public String uploadOther(MultipartFile file) {
        String filePath = "/books/total/";
        return upload(file,filePath);
    }

    @Override
    public String uploadPlan(MultipartFile file) {
        String filePath = "/books/plan/";
        return upload(file,filePath);
    }

    @Override
    public String uploadSummary(MultipartFile file) {
        String filePath = "/books/summary/";
        return upload(file,filePath);
    }

    @Override
    public void downloadMetting(HttpServletResponse response, String path,String name) {
        String filePath = "/books/metting/"+path;
        download(response,filePath,name);
    }

    @Override
    public void downloadOther(HttpServletResponse response, String path,String name) {
        String filePath = "/books/total/"+path;
        download(response,filePath,name);
    }

    @Override
    public void downloadPlan(HttpServletResponse response, String path,String name) {
        String filePath = "/books/plan/"+path;
        download(response,filePath,name);
    }

    @Override
    public void downloadSummary(HttpServletResponse response, String path,String name) {
        String filePath = "/books/summary/"+path;
        download(response,filePath,name);
    }

    @Override
    public boolean deleteMetting(String path) {
        String filePath = "/books/metting/";
        return delete(filePath,path);
    }

    @Override
    public boolean deleteOther(String path) {
        String filePath = "/books/total/";
        return delete(filePath,path);
    }

    @Override
    public boolean deletePlan(String path) {
        String filePath = "/books/plan/";
        return delete(filePath,path);
    }

    @Override
    public boolean deleteSummary(String path) {
        String filePath = "/books/summary/";
        return delete(filePath,path);
    }

    /** @Description: 文件上传处理类
    * @Author: wangshilei*/
    private String upload (MultipartFile file, String filePath) {
        //String realPath = ClassUtils.getDefaultClassLoader().getResource("/").getPath();
        try{
            String realPath = ResourceUtils.getFile("classpath:").getPath();
            //System.out.println(realPath);
            File folder = new File(realPath+filePath);//文件保存路径
            if(!folder.isDirectory()) {
                folder.mkdirs();
            }
            String oldName = file.getOriginalFilename();
            String newName = UUID.randomUUID().toString()+oldName.substring(oldName.lastIndexOf("."));


                file.transferTo(new File(folder,newName));//文件保存
                //System.out.println(newName);
                return newName;
            }catch (IOException e) {
                e.printStackTrace();
            }

        return null;

    }


    /** @Description: 文件下载处理
    * @Author: wangshilei*/
    private void download(HttpServletResponse response,String path,String name) {
        // 文件地址，真实环境是存放在数据库中的
        InputStream inputStream = null;
        ServletOutputStream servletOutputStream = null;

        try {
            Resource resource = new DefaultResourceLoader().getResource("classpath:"+path);

            // 设置相关格式
            response.setContentType("application/force-download");
            // 设置下载后的文件名以及header
            String prefix = path.substring(path.lastIndexOf(".") + 1);
            name = name + "." + prefix;

            //设置reponse响应头，真实文件名重命名，就是在这里设置，设置编码
            response.setHeader("Content-disposition","attachment; filename="
                    + new String(name.getBytes("utf-8"), "ISO8859-1"));

            // 创建输出对象
            inputStream = resource.getInputStream();
            servletOutputStream = response.getOutputStream();
            IOUtils.copy(inputStream, servletOutputStream);
            response.flushBuffer();
            } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (servletOutputStream != null) {
                    servletOutputStream.close();
                    servletOutputStream = null;
                }
                if (inputStream != null) {
                    inputStream.close();
                    inputStream = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    /** @Description: 文件删除处理
    * @Author: wangshilei*/
    private boolean delete(String path,String name){
        try{
            String realPath = ResourceUtils.getFile("classpath:").getPath();
            File file = new File(realPath+path+name);//文件保存路径
            if (file.exists()) {
                return file.delete();
            }
        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("异常:"+e);
        }
        return false;
    }
}
