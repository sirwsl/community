package com.wsl.service.student;

import com.wsl.entity.meets;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @program: community
 * @description: 学生社团会议记录接口
 * @author: wangshilei
 * @create: 2020-05-28 01:30
 **/

public interface meetService {

    //增加一次会议
    boolean addMeeting(meets meet, MultipartFile file);

    //分页查询所有数据
    List<meets> findMeets(int page,int num,int id);
}
