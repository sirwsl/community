package com.wsl.serviceImpl.student;

import com.wsl.entity.members;
import com.wsl.mapper.student.membersMapper;
import com.wsl.service.student.membersService;
import com.wsl.until.pages;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * @program: community
 * @description: membersService的实现类
 * @author: wangshilei
 * @create: 2020-05-25 22:52
 **/
@Service
public class membersImpl implements membersService {

    @Resource
    private membersMapper membersMapper;

    @Resource
    private pages pages;


    @Override
    @Transactional
    public boolean addMembers(members members) {
        try {
            int n = membersMapper.addmembers(members);
            int m = membersMapper.addOne();
            //System.out.println(m+"   "+n);
            if (n>0 && m>0) return true;
            else return false;
        }catch (Exception e){
            System.out.println(e);
            return false;
        }

    }

    @Override
    public List<members> findMembers(int page, int num,int id) {
        return membersMapper.findMembers(pages.getPages(page,num),id);
    }

    @Override
    public members getMembers(String name,int id) {
        return membersMapper.getMenbers(name,id);
    }

}
