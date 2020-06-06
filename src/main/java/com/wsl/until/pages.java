package com.wsl.until;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @program: community
 * @description: 分页查询
 * @author: wangshilei
 * @create: 2020-05-28 21:05
 **/

@Component
public class pages {

    /**@Description: 分页参数传递
     * @Date: 2020/5/28(21:06)  @Author: wangshilei**/
    public Map getPages(int currentPage,int pageSize){
        Map<String,Integer> map = new HashMap<String,Integer>();
        map.put("startIndex",(currentPage-1)*pageSize);
        map.put("pageSize",pageSize);
        return map;
    }
}
