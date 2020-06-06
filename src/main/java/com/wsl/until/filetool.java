package com.wsl.until;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;

/** @Description: 文件操作接口
* @Author: wangshilei
 * 操作：
 * down:    files.downloadMetting(HttpServletResponse response,path,newname);
 * upload:  files.uploadMetting(file);
 * delete:  file.deleteMetting(name);
 * */
public interface filetool {

    /** @Description: 会议记录上传
    * @Author: wangshilei*/
    String uploadMetting(MultipartFile file);

    /** @Description: 策划案上传
    * @Author: wangshilei*/
    String uploadPlan(MultipartFile file);

    /** @Description: 活动总结上传
    * @Author: wangshilei*/
    String uploadSummary(MultipartFile file);

    /** @Description: 其余文件上传
    * @Author: wangshilei*/
    String uploadOther(MultipartFile file);

    /** @Description: 其余文件下载
    * @Author: wangshilei*/
    void downloadOther(HttpServletResponse response,String path,String name);

    /** @Description: 活动总结下载
    * @Author: wangshilei*/
    void downloadSummary(HttpServletResponse response, String path,String name);

    /** @Description: 策划案下载
    * @Author: wangshilei*/
    void downloadPlan(HttpServletResponse response, String path,String name);

    /** @Description: 会议记录下载
    * @Author: wangshilei*/
    void downloadMetting(HttpServletResponse response, String path,String name);
    
    /** @Description: 删除其余文件 
    * @Author: wangshilei*/
    boolean deleteOther(String path);

    /** @Description:删除活动总结  
    * @Author: wangshilei*/
    boolean deleteSummary(String path);
    
    /** @Description: 删除策划案
    * @Author: wangshilei*/
    boolean deletePlan(String path);
    
    /** @Description: 删除会议记录 
    * @Author: wangshilei*/
    boolean deleteMetting(String path);
}

