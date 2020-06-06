package com.wsl.service.student;

import com.wsl.entity.members;

import java.util.List;


public interface membersService {

    //添加一个会员
    boolean addMembers(members m);

    //按照姓名模糊查询会员
    members getMembers(String name,int id);

    //分页查找会员
    List<members> findMembers(int page,int num,int id);
}
