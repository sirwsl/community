package com.wsl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @program: community
 * @description: 任职表
 * @author: wangshilei
 * @create: 2020-05-25 18:52
 **/
@Data
@Entity
public class office {
    @Id
    private Integer id;//id
    private Integer peo_id;//人员id
    private Integer com_id;//所属社团
    private String position;//职位
    private Integer perm;//权限
}
