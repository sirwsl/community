package com.wsl.serviceImpl.student;

import com.wsl.entity.meets;
import com.wsl.mapper.student.meetMapper;
import com.wsl.service.student.meetService;
import com.wsl.until.filetool;
import com.wsl.until.pages;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * @program: community
 * @description: 学生社团会议记录接口实现
 * @author: wangshilei
 * @create: 2020-05-28 01:32
 **/
@Service
public class meetImpl implements meetService {
    @Resource
    private meetMapper meetMapper;
    @Resource
    private filetool filetool;
    @Resource
    private pages pages;

    @Transactional
    public boolean addMeeting(meets meet, MultipartFile file) {
        String path = filetool.uploadMetting(file);
        if(path !=null && !path.isEmpty()) {
            meet.setPath(path);
            int flag = meetMapper.addMetting(meet);
            if (flag>0) return true;
        }
        return false;
    }

    @Override
    public List<meets> findMeets(int page, int num,int id) {
        return meetMapper.findMeets(pages.getPages(page,num),id);
    }
}
