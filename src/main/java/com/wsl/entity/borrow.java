package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 出纳借记表
 * @author: wangshilei
 * @create: 2020-05-25 19:34
 **/
@Data
@Entity
public class borrow {
    @Id
    private Integer id;//编号
    private String name;//借的人
    private String phone;//联系方式
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date first_date;//借的时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date last_date;//归还时间
    private Integer goo_id;//所借物品ID
    private Integer number;//数量
    private Integer peo_id;//登记人
}
