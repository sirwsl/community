package com.wsl.controller.student;

import com.wsl.entity.goods;
import com.wsl.service.student.goodsService;
import com.wsl.until.judge;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * @program: community
 * @description: 社团固定资产-物品
 * @author: wangshilei
 * @create: 2020-05-28 15:41
 **/
@RestController
@RequestMapping("/comm")
public class goodsController {
    @Autowired
    private goodsService goodsService;

    @Autowired
    private judge judge;

    /**@Description: 添加一条社团物品记录
     * @Date: 2020/5/28(15:42)@Author: wangshilei**/

    @PostMapping("/addGood")
    public String addGoods(@Param("code") String code, @Param("phone") String phone,
                           goods goods, HttpSession session){
        if (judge.judgeSMS(code, phone,session)){
            int n = goodsService.addGoods(goods,Integer.parseInt(session.getAttribute("comm_id").toString()));
            if (n > 0) return  "添加成功";
        }else return "验证码输入错误";
        return "添加失败";
    }

    /**@Description: 获取物品列表，分页
     * @Date: 2020/5/29(0:55)  @Author: wangshilei**/
    @GetMapping("/findGoods")
    public String findGoods(@Param("page")Integer page, @Param("num")Integer num,
                            HttpSession session){
        return goodsService.findGoods(page,num,Integer.parseInt(session.getAttribute("comm_id").toString())).toString();
    }
}
