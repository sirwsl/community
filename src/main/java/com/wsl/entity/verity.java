package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 防伪验证与审批内容
 * @author: wangshilei
 * @create: 2020-05-25 19:12
 **/
@Data
@Entity
public class verity {
    @Id
    private Integer id;//Id
    private Integer peo_id;//people id
    private Integer act_id;//活动id
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//审批时间
    private String code;//防伪码
    private String content;//审批内容
}
