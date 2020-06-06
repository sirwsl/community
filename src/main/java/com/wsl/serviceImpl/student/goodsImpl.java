package com.wsl.serviceImpl.student;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.goods;
import com.wsl.mapper.student.goodsMapper;
import com.wsl.service.student.goodsService;
import com.wsl.until.pages;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @program: community
 * @description: 物品管理实现service
 * @author: wangshilei
 * @create: 2020-05-28 15:00
 **/
@Service
public class goodsImpl implements goodsService {

    @Resource
    private goodsMapper goodsMapper;

    @Resource
    private pages pages;


    @Override
    public Integer addGoods(goods goods,int id) {
        goods.setDate(new Date());
        goods.setCom_id(id);
        return goodsMapper.addGoods(goods);
    }

    @Override
    public List<JSONObject> findGoods(int page, int num,int id) {
        return goodsMapper.findGoods(id,pages.getPages(page,num));
    }
}
