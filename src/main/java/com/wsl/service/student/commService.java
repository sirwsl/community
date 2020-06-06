package com.wsl.service.student;

import com.wsl.entity.comm;

/**
 * @program: community
 * @description: 社团信息相关
 * @author: wangshilei
 * @create: 2020-05-28 16:10
 **/

public interface commService {

    //获取社团记录
    comm getComm(int id);

    //修改社团信息
    boolean setComm(comm comm);
}
