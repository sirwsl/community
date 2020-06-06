package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 社团会员
 * @author: wangshilei
 * @create: 2020-05-24 22:42
 **/
@Data
@Entity
public class members {

    @Id
    private Integer id;//id
    private Integer comm_id;//学生id社团
    private String password; //密码
    private String name; //姓名
    private String number;//学号
    private Integer grad;//年级
    private String class_name;//班级
    private String phone;//联系电话
    private String wx;//微信
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;//加入时间
}
