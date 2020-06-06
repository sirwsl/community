package com.wsl.mapper.student;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.money;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @program: community
 * @description: 会费收入支出情况
 * @author: wangshilei
 * @create: 2020-05-28 12:05
 **/
@Mapper
public interface moneyMapper {

    //添加一条收支记录
    Integer addMoney (@Param("money") money money);

    //会费增加
    Integer upMoney(@Param("num")BigDecimal money, @Param("id") Integer id);

    //会费减少
    Integer downMoney(@Param("num")BigDecimal money,@Param("id") Integer id);

    //收支记录查询
    List<JSONObject> findMoney(Map<String,Integer> map,@Param("id")Integer id);

}
