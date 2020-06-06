package com.wsl.until;

import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;

/**
 * @program: community
 * @description: 登陆之类的判断
 * @author: wangshilei
 * @create: 2020-05-28 11:18
 **/

@Component
public class judge {

    /**@Description: 短信验证码判断
     * @Date: 2020/5/28(11:19)  @Author: wangshilei**/
    public boolean judgeSMS(String code, String phone, HttpSession session){
        String phonecode =(String)session.getAttribute("codesms");
        String phonenum = (String)session.getAttribute("phonesms");
        if(phonenum.equals(phone) && phonecode.equals(code)) {
            session.removeAttribute("phonesms");
            session.removeAttribute("codesms");
            return true;
        }
        else return false;
    }

    /**@Description: 密码判断
     * @Date: 2020/5/28(11:25)  @Author: wangshilei**/
    public boolean judgePassword(String password,HttpSession session){
        String pass = (String) session.getAttribute("password");
        if (password.equals(pass)) {
            return true;
        }
        else return false;
    }

    /**@Description: 验证码判断
     * @Date: 2020/6/4(17:26)  @Author: wangshilei**/

    public boolean judgeCode(String code,HttpSession session){
        String num = (String)session.getAttribute("imgCode");
        System.out.println(num);
        System.out.println(num.equalsIgnoreCase(code));
        if (num.equalsIgnoreCase(code)) return true;

        else return false;
    }
}
