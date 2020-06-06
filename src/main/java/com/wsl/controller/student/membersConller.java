package com.wsl.controller.student;

import com.wsl.entity.members;
import com.wsl.service.student.membersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;


/**
 * @program: community
 * @description: 会员相关控制
 * @author: wangshilei
 * @create: 2020-05-25 21:59
 **/
@RestController
@RequestMapping("/comm")
public class membersConller {


    @Autowired
    public membersService membersService;

    /** @Description: 接收社团添加会员接口（传入会员，返回true or false）
     * @Author: wangshilei*/
    @PostMapping("/addMembers")
    public boolean addMembers(members mem){
        return  membersService.addMembers(mem);
    }

    /**@Description: 获取会员列表
     * @Date: 2020/5/28(23:35)  @Author: wangshilei**/
    @GetMapping("findMembers")
    public String findMembers(@Param("page")Integer page, @Param("num")Integer num,
                              HttpSession session){
        return membersService.findMembers(page,num,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }
    /**@Description: 按照姓名查找会员
     * @Date: 2020/5/28(23:37)  @Author: wangshilei**/
    @GetMapping("getMembers")
    public String getMembers(@Param("name")String name,HttpSession session){
        return membersService.getMembers(name,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }

}
