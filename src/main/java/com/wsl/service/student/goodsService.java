package com.wsl.service.student;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.goods;

import java.util.List;

/**
 * @program: community
 * @description: 物品管理service
 * @author: wangshilei
 * @create: 2020-05-28 14:59
 **/

public interface goodsService {

    //添加一个物品
    Integer addGoods(goods goods,int id);

    //修改一个物品


    //删除一个物品

    //获取一个物品

    //获取全部物品
    List<JSONObject> findGoods(int page,int num,int id);
}
