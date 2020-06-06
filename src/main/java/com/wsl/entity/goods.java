package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 财务管理
 * @author: wangshilei
 * @create: 2020-05-25 19:30
 **/
@Data
@Entity
public class goods {
    @Id
    private Integer id;//id
    private String name;//物品名称
    private Integer number;//数量
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//登记日期
    private Integer peo_id;//登记人
    private String type;//类型
    private Integer com_id;//社团id
}
