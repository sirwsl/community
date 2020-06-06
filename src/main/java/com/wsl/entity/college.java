package com.wsl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @program: community
 * @description: 学院
 * @author: wangshilei
 * @create: 2020-05-26 00:42
 **/
@Data
@Entity
public class college {
    @Id
    private Integer id;//id
    private String name;//学院名称
}
