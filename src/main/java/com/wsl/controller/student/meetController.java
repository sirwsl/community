package com.wsl.controller.student;

import com.wsl.entity.meets;
import com.wsl.service.student.meetService;
import com.wsl.until.judge;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @program: community
 * @description: 社团活动相关的控制构建
 * @author: wangshilei
 * @create: 2020-05-28 01:47
 **/
@RestController
@RequestMapping("/comm")
public class meetController {
    @Autowired
    private meetService meetService;
    @Autowired
    private judge judge;


    /**@Description: 会议上传处理
     * @Date: 2020/5/28(1:48)  @Author: wangshilei**/
    @PostMapping("/addMeet")
    public String addMeeting(HttpServletResponse response, meets meet,
                             @RequestParam("path") MultipartFile file,
                             String password, String code, String phone,
                             HttpSession session){

        if (judge.judgeSMS(code, phone,session)) {
            if (judge.judgePassword(password,session)) {
                meet.setCom_id(Integer.parseInt(session.getAttribute("comm_id").toString()));
                boolean flag = meetService.addMeeting(meet, file);
                //正确开始界面跳转
                if (flag) {
                    try {
                        PrintWriter out = response.getWriter();
                        out.print("<script>window.parent.location.href='xxx';</script>");
                        out.flush();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }else return "密码输入错误!请重新输入";
        } else return "手机验证码输入错误！请重新输入。";

        return "请稍后再试";
    }


    /**@Description: 获取会议记录
     * @Date: 2020/5/28(21:17)  @Author: wangshilei**/
    @GetMapping("/meets")
    public String findMeets(@RequestParam("num")Integer num,@RequestParam("page")Integer page,
                            HttpSession session){
        return meetService.findMeets(page,num,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }
}
