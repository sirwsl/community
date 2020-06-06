package com.wsl.service;

import com.wsl.entity.comm;
import com.wsl.entity.people;

/**
 * @program: community
 * @description: 登录接口
 * @author: wangshilei
 * @create: 2020-06-04 17:15
 **/

public interface loginService {
    //社团登录接口
    comm comLogin(String number,String password);
    //教师登录接口
    people peoLogin(String number, String password);
}
