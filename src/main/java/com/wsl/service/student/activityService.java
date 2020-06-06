package com.wsl.service.student;

import com.wsl.entity.activit;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @program: community
 * @description: 活动相关接口
 * @author: wangshilei
 * @create: 2020-05-27 18:57
 **/


public interface activityService {
    //新建一个活动
    boolean addActivity(activit acticity, MultipartFile file);

    //获取活动列表
    List<activit> findActivity(int page, int num,int id);

    //活动名称模糊查询（分页）
    List<activit> findActivityName(int page,int num,String name,int id);

    //活动状态查询活动（分页）
    List<activit> findActivityRates(int page,int num,int rate,int id);
}
