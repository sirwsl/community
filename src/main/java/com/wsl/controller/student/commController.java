package com.wsl.controller.student;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.comm;
import com.wsl.service.student.commService;
import com.wsl.until.judge;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * @program: community
 * @description: 社团自身相关的controller实现
 * @author: wangshilei
 * @create: 2020-05-28 16:15
 **/
@RestController
@RequestMapping("/comm")
public class commController {
    @Autowired
    private judge judge;
    @Autowired
    private commService commService;


    /**@Description: 获取社团基本信息
     * @Date: 2020/5/28(16:26)  @Author: wangshilei**/
    @GetMapping("/getComm")
    public String getComm(HttpSession session){
       return JSONObject.toJSONString(commService.getComm(Integer.parseInt(session.getAttribute("comm_id").toString())));
    }

    /**@Description: 社团基本资料修改
     * @Date: 2020/5/28(16:21)  @Author: wangshilei**/
    @PutMapping("/setComm")
    public String setComm(@Param("phone") String phone,@Param("code") String code,
                          @Param("password") String password, comm comm,HttpSession session){
        if (judge.judgePassword(password,session)){
            if (judge.judgeSMS(code, phone,session)){
                boolean flag = commService.setComm(comm);
                if (flag) return "修改成功";
                else return "修改失败";
            }else return "验证码错误";
        }else return "社团密码错误";

    }
}
