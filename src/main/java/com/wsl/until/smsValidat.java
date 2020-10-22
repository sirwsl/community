package com.wsl.until;

import com.alibaba.fastjson.JSONObject;
import com.zhenzi.sms.ZhenziSmsClient;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * @program: community
 * @description: 短信验证工具实现
 * @author: wangshilei
 * @create: 2020-05-26 21:54
 **/

@Component
public class smsValidat {

    //短信平台相关参数
    //这个不用改
    private String apiUrl = "https://sms_developer.zhenzikj.com";
    //榛子云系统上获取
    private String appId = "1024";
    private String appSecret = "caa68ca4-6c06-4asb-bada-d32d6c19388f";

    public JSONObject getCode(String memPhone){
        JSONObject json = new JSONObject();
        try {
            //随机生成验证码
            String code = String.valueOf(new Random().nextInt(999999));
            //将验证码通过榛子云接口发送至手机

            ZhenziSmsClient client = new ZhenziSmsClient(apiUrl, appId, appSecret);
            Map<String, Object> params = new HashMap<String, Object>();
            params.put("number", memPhone);
            params.put("templateId", "355");
            String[] templateParams = new String[2];
            templateParams[0] = code;
            templateParams[1] = "5分钟";
            params.put("templateParams", templateParams);
            String result = client.send(params);

            json = JSONObject.parseObject(result);
            //System.out.println(json.toString());
            if (json.getIntValue("code")==0) {//发送短信
                json.put("phone", memPhone);
                json.put("code", code);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
        return json;
    }

}
