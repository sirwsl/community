package com.wsl.serviceImpl.student;

import com.wsl.entity.money;
import com.wsl.mapper.student.moneyMapper;
import com.wsl.service.student.moneyService;
import com.wsl.until.pages;
import netscape.javascript.JSObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * @program: community
 * @description: 社团会费实现类
 * @author: wangshilei
 * @create: 2020-05-28 13:42
 **/
@Service
public class moneyImlp implements moneyService {
    @Resource
    private moneyMapper moneyMapper;
    @Resource
    private pages pages;


    //1收入  2支出
    @Override
    @Transactional
    public boolean addMoney(money money) {
        int n = moneyMapper.addMoney(money);
        if (n > 0 && money.getIn_out()==1){
            moneyMapper.upMoney(money.getMoney(),money.getId());
            return true;
        }else if (n > 0&& money.getIn_out()==2){
            moneyMapper.downMoney(money.getMoney(),money.getId());
            return true;
        }
        return false;
    }

    @Override
    public List<JSObject> findMoney(int page, int num,int id) {
        return moneyMapper.findMoney(pages.getPages(page,num),id);
    }
}
