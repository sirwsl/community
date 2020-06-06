package com.wsl.mapper.student;

import com.wsl.entity.comm;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @program: community
 * @description: 社团相关信息mapper
 * @author: wangshilei
 * @create: 2020-05-28 15:53
 **/

@Mapper
public interface commMapper {

    //社团基本资料获取
    comm getComm(@Param("id")Integer id);

    //社团信息修改
    Integer setComm(@Param("comm") comm comm);

}
