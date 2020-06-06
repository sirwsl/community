package com.wsl.serviceImpl;

import com.wsl.entity.comm;
import com.wsl.entity.people;
import com.wsl.mapper.loginMapper;
import com.wsl.service.loginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: community
 * @description: 登录接口实现
 * @author: wangshilei
 * @create: 2020-06-04 17:17
 **/

@Service
public class loginServerImpl implements loginService {

    @Resource
    private loginMapper login;
    @Override
    public comm comLogin(String number, String password) {
        return login.commLogin(number,password);
    }

    @Override
    public people peoLogin(String number, String password) {
        return login.peoLogin(number,password);
    }
}
