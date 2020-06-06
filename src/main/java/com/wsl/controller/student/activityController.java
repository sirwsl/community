package com.wsl.controller.student;

import com.wsl.entity.activit;
import com.wsl.service.student.activityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @program: community
 * @description: 活动相关控制器
 * @author: wangshilei
 * @create: 2020-05-29 01:45
 **/
public class activityController {
    @Autowired
    private  activityService activityService;

    @Autowired
    private com.wsl.until.judge judge;

    /**@Description: 社团活动新增 ，判断密码是否一致 true则新增
     * @Date: 2020/5/27(22:48)  @Author: wangshilei**/
    @PostMapping("/addActivity")
    public String addAcitvit(HttpServletResponse response, activit activity,
                             @RequestParam("path") MultipartFile file,
                             String password, String code, String phone
                            , HttpSession session) {

        if (judge.judgeSMS(code,phone,session)) {
            if (judge.judgePassword(password,session)) {
                activity.setCom_id(Integer.parseInt(session.getAttribute("comm_id").toString()));
                boolean flag = activityService.addActivity(activity, file);
                if (flag) {
                    try {
                        PrintWriter out = response.getWriter();
                        out.print("<script>window.parent.location.href='xxx';</script>");
                        out.flush();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }else
                return "密码输入错误!请重新输入";
        }else
            return "手机验证码输入错误！请重新输入。";

        return "请稍后再试";

    }

    /**@Description: 活动列表返回，list.tostring
     * @Date: 2020/5/28(22:20)  @Author: wangshilei**/
    @GetMapping("/activity")
    public String findActivity(@RequestParam("num")Integer num,
                               @RequestParam("page")Integer page,HttpSession session){

        return activityService.findActivity(page,num,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }


    /**@Description: 活动返回（按照活动名称模糊查询）
     * @Date: 2020/5/28(23:04)  @Author: wangshilei**/
    @GetMapping("/activityName")
    public String findAcitivityName(@RequestParam("name")String name, @RequestParam("num")Integer num,
                                    @RequestParam("page")Integer page,HttpSession session){
        return activityService.findActivityName(page,num,name,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }

    /**@Description: 活动返回（按照活动进度）
     * @Date: 2020/5/28(23:08)  @Author: wangshilei**/
    @GetMapping("/activityName")
    public String findAcitivityRate(@RequestParam("rates")Integer rates, @RequestParam("num")Integer num,
                                    @RequestParam("page")Integer page,HttpSession session){
        return activityService.findActivityRates(page,num,rates,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }
}
