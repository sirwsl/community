package com.wsl.controller.student;

import com.wsl.entity.money;
import com.wsl.service.student.moneyService;
import com.wsl.until.judge;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

/**
 * @program: community
 * @description: 社团收支记录的Conller
 * @author: wangshilei
 * @create: 2020-05-28 13:48
 **/
@RestController
@RequestMapping("/comm")
public class moneyController {
    @Autowired
    private moneyService moneyService;

    @Autowired
    private judge judge;

    /**@Description: 添加收入支出记录
     * @Date: 2020/5/28(14:52)  @Author: wangshilei**/
    @PostMapping("/addMoney")
    public String addMoney(money money,
            @RequestParam("code") String code, @RequestParam("phone") String phone,
                           HttpSession session){
            if (judge.judgeSMS(code, phone,session)){
                money.setCom_id(Integer.parseInt(session.getAttribute("comm_id").toString()));
                if(moneyService.addMoney(money)) return "添加成功";
                else return "添加失败";
            }else return "验证码输入错误，请稍后再试";
    }

    /**@Description: 获取收支记录表
     * @Date: 2020/5/29(0:41)  @Author: wangshilei**/
    @GetMapping("/findMoney")
    public String findMoney(@Param("page")Integer page, @Param("num")Integer num, HttpSession session){
        return moneyService.findMoney(page,num,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }


}