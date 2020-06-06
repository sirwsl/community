package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: community
 * @description: 财务出纳登记表
 * @author: wangshilei
 * @create: 2020-05-25 19:46
 **/
@Data
@Entity
public class money {
    @Id
    private Integer id;//id
    private Integer com_id;//社团id
    private Integer peo_id;//人员id
    private Integer in_out;//收入支出（1/2）收入为1，支出为2
    private BigDecimal money;//数量
    private String note;//备注
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//时间
}
