package com.wsl.mapper;

import com.wsl.entity.comm;
import com.wsl.entity.people;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @program: community
 * @description: 会费收入支出情况
 * @author: wangshilei
 * @create: 2020-05-28 12:05
 **/
@Mapper
public interface loginMapper {

    //社团登录管理
    comm commLogin (@Param("num") String number, @Param("password") String password);

    people peoLogin(@Param("num") String number,@Param("password") String password);

}
