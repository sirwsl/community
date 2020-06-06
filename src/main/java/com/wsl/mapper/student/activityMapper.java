package com.wsl.mapper.student;

import com.wsl.entity.activit;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @program: community
 * @description: 活动相关的Mapper层
 * @author: wangshilei
 * @create: 2020-05-27 18:55
 **/
@Mapper
public interface activityMapper {
    //增加一个活动
    Integer addAcivity(@Param("activit")activit activit);

    //获取活动列表
    List<activit> findActivity(Map<String,Integer> map,@Param("id") Integer id);

    //获取活动列表-进度
    List<activit> findActivityPlan(Map<String,Integer> map,
                                   @Param("id") Integer id,@Param("rates")Integer num);

    //获取活动按列表模糊查询
    List<activit> findActivityName(Map<String,Integer> map,
                                   @Param("id") Integer id,@Param("name") String name);
}
