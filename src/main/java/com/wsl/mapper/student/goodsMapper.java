package com.wsl.mapper.student;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @program: community
 * @description: 物品管理mapper
 * @author: wangshilei
 * @create: 2020-05-28 14:53
 **/
@Mapper
public interface goodsMapper {

    //添加一个物品
    Integer addGoods(@Param("goods") goods goods);

    //物品修改

    //物品删除

    //物品查询

    //全部物品
    List<JSONObject> findGoods(@Param("id")Integer id, Map<String,Integer> map);

}
