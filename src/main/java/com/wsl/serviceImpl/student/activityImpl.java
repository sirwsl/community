package com.wsl.serviceImpl.student;

import com.wsl.entity.activit;
import com.wsl.mapper.student.activityMapper;
import com.wsl.service.student.activityService;
import com.wsl.until.filetool;
import com.wsl.until.pages;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

/**
 * @program: community
 * @description: 活动相关实现
 * @author: wangshilei
 * @create: 2020-05-27 18:50
 **/
@Service
public class activityImpl implements activityService {
    @Resource
    private activityMapper activityMapper;
    @Resource
    private filetool filetool;
    @Resource
    private pages pages;


    /**@Description: 社团创建一个活动
     * @Date: 2020/5/27(21:48)  @Author: wangshilei
     * @return**/
    @Override
    @Transactional
    public boolean addActivity(activit acticity, MultipartFile file) {
        try{
            String path = filetool.uploadPlan(file);
            if (path !=null && !path.isEmpty()) {
                acticity.setPlan_path(path);
                acticity.setDate(new Date());
                int flag = activityMapper.addAcivity(acticity);
                if (flag > 0) return true;
            }
        }catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return false;
    }

    @Override
    public List<activit> findActivity(int page, int num ,int id) {
        return activityMapper.findActivity(pages.getPages(page,num), id);
    }

    @Override
    public List<activit> findActivityName(int page, int num, String name,int id) {
        return activityMapper.findActivityName(pages.getPages(page,num), id,name);
    }

    @Override
    public List<activit> findActivityRates(int page, int num, int rate,int id) {
        return activityMapper.findActivityPlan(pages.getPages(page,num),id,rate);
    }
}
