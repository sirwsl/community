package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: community
 * @description: 学生社团
 * @author: wangshilei
 * @create: 2020-05-25 18:42
 **/
@Data
@Entity
public class comm {
    @Id
    private Integer id;//id
    private String number;//账号
    private String password;//密码
    private String name;//社团名称
    private Integer collage;//所属学院
    private Integer teacher_id;//指导老师
    private String adress;//地址
    private Integer lever;//社团等级
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;//成立时间
    private Integer sum;//会员总数
    private String intro;//社团简介
    private String type;//社团类型
    private BigDecimal money;//会费结余
    private Integer flag;//社团中心    1社团中心 0其余社团

}
