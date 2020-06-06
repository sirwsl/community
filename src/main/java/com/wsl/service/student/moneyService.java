package com.wsl.service.student;

import com.wsl.entity.money;
import netscape.javascript.JSObject;

import java.util.List;

/**
 * @program: community
 * @description: 社团会费servicec层接口
 * @author: wangshilei
 * @create: 2020-05-28 13:41
 **/

public interface moneyService {
    //添加一条收支记录
    boolean addMoney(money money);

    //收支记录返回
    List<JSObject> findMoney(int page,int num,int id);
}
