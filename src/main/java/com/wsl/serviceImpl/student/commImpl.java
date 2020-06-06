package com.wsl.serviceImpl.student;

import com.wsl.entity.comm;
import com.wsl.mapper.student.commMapper;
import com.wsl.service.student.commService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: community
 * @description: 社团信息实现接口实现 service
 * @author: wangshilei
 * @create: 2020-05-28 16:11
 **/
@Service
public class commImpl implements commService {
    @Autowired
    private commMapper commMapper;

    @Override
    public comm getComm(int id) {
        return commMapper.getComm(id);
    }

    @Override
    public boolean setComm(comm comm) {
        int n = commMapper.setComm(comm);

        if (n > 0) return true;
        else return false;
    }
}
