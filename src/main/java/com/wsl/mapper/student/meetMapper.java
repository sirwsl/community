package com.wsl.mapper.student;

import com.wsl.entity.meets;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @program: community
 * @description: 会议相关的Mapper层
 * @author: wangshilei
 * @create: 2020-05-28 01:22
 **/
@Mapper
public interface meetMapper {
    //增加一个会议
    Integer addMetting(@Param("met") meets met);

    //获取会议列表
    List<meets> findMeets(Map<String,Integer> map,@Param("id") Integer id);
}
