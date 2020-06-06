package com.wsl.mapper.student;

import com.wsl.entity.members;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface membersMapper {
    //总数+1
    Integer addOne();

    //总数-1
    Integer reduceOne();

    //添加一个会员
    Integer addmembers(@Param("m") members m);

    //获取会员列表
    List<members> findMembers(Map<String,Integer> map, @Param("id")Integer id);

    //按姓名查找
    members getMenbers(@Param("name") String name,@Param("id")Integer id);

}
