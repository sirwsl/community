package com.wsl.controller;

import com.alibaba.fastjson.JSONObject;
import com.wsl.entity.comm;
import com.wsl.entity.people;
import com.wsl.service.loginService;
import com.wsl.until.judge;
import com.wsl.until.smsValidat;
import com.wsl.until.validatio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @program: community
 * @description: 公共的（手机验证、验证码接口）
 * @author: wangshilei
 * @create: 2020-05-28 00:30
 **/
@RestController
public class comment {

    @Autowired
    private smsValidat sms;
    @Autowired
    private validatio validatio;
    @Autowired
    private loginService login;
    @Autowired
    private judge judge;


    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    /**@Description: 登录验证
     * @Date: 2020/6/4(15:57)  @Author: wangshilei**/
    @PostMapping("/comLogin")
    public ModelAndView comLogin(String number, String password,
                         String codeNum, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        if (judge.judgeCode(codeNum,session)) {
            comm comm = login.comLogin(number, password);
            if (comm != null) {
                session.setAttribute("comm_name", comm.getName());
                session.setAttribute("comm_id", comm.getId());
                session.setAttribute("comm_teaid", comm.getTeacher_id());
                if (comm.getFlag() == 1) mv.setViewName("index_centen");
                else if (comm.getFlag() == 0) mv.setViewName("index_student");
            } else mv.addObject("msg", "用户名或密码错误，请重新输入");
        }else mv.addObject("msg","验证码错误，请重新输入");

        return mv;

    }

    @PostMapping("/peoLogin")
    public ModelAndView peoLogin(String number,String password,
                              String codeNum,HttpSession session) {
        ModelAndView mv = new ModelAndView();
        if (judge.judgeCode(codeNum,session)){
            people people = login.peoLogin(number, password);
            if (people != null) {
                session.setAttribute("user_id",people.getId());
                session.setAttribute("user_name",people.getName());
                session.setAttribute("user_flag",people.getFlag());
                //4 保卫科 3学院人员 2指导教师 1会长（不跳转）
                if (people.getFlag() == 4) mv.setViewName("index_academy");
                else if (people.getFlag() == 3 ||people.getFlag() == 2)mv.setViewName("index_teacher");
            } else mv.addObject("msg", "用户名或密码错误，请重新输入");
        }else mv.addObject("msg","验证码错误，请重新输入");

        return mv;



    }


    /**@Description: 获取手机验证码
     * @Date: 2020/5/28(0:43)  @Author: wangshilei**/
    @RequestMapping("/code")
    public String getCode(String phone,HttpSession session){
        JSONObject jb = sms.getCode(phone);
        session.setMaxInactiveInterval(300);
        session.setAttribute("phonesms",jb.getString("phone"));
        session.setAttribute("codesms",jb.getString("code"));
        if (!jb.isEmpty()) return "验证码获取失败,请稍后再试";
        else return "验证码已经发送";
    }

    /**@Description: 获取图形状验证码
     * @Date: 2020/5/28(0:50)  @Author: wangshilei**/
    @RequestMapping("/imgCode")
    public void getCodeImg(HttpServletResponse response, HttpSession session){
        try {
            validatio.output(response.getOutputStream());
            session.setMaxInactiveInterval(120);
            session.setAttribute("imgCode",validatio.getText());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**@Description: 视图解析器
     * @Date: 2020/6/4(23:15)  @Author: wangshilei**/
    @RequestMapping("/teacher")
    public ModelAndView teacher(){
        return new ModelAndView("index_teacher");
    }
    @RequestMapping("/student")
    public ModelAndView student(){
        return new ModelAndView("index_studednt");
    }
    @RequestMapping("/centens")
    public ModelAndView centen(){
        return new ModelAndView("index_centen");
    }
    @RequestMapping("/academy")
    public ModelAndView academy(){
        return new ModelAndView("index_academy");
    }
}
