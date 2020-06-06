package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 活动申请表
 * @author: wangshilei
 * @create: 2020-05-25 19:01
 **/
@Data
@Entity
public class activit {
    @Id
    private Integer id;
    private Integer com_id;//所属社团id
    private String name;//活动名称
    private Integer pla_id;//活动地点(场地ID)
    private Integer number;//活动人数
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date fist_date;//开始时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date last_date;//结束时间
    private String rang;//活动范围
    private String theme;//活动主题
    private String intros;//活动简介
    private String know;//活动须知
    private String plan_path;//策划案路径
    private String sum_path;//活动总结
    private Integer peo_id;//申请人ID
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//申请时间
    private Integer rates;//进度
}

