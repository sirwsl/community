package com.wsl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @program: community
 * @description: 场地表
 * @author: wangshilei
 * @create: 2020-05-25 19:44
 **/
@Data
@Entity
public class place {
    @Id
    private Integer id;//id
    private String name;//场地地点
}
