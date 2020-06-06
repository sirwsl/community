package com.wsl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @program: community
 * @description: 任职人员（教师、学生）
 * @author: wangshilei
 * @create: 2020-05-25 18:55
 **/
@Data
@Entity
public class people {
    @Id
    private Integer id;//id
    private String name;//姓名
    private String password;//密码
    private String number;//学号/工号
    private String phone;//电话
    private String wx;//微信
    private Integer college;//所属学院
    private String adress;//地址
    private Integer flag;//权限控制
}
