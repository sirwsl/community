package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 会议记录
 * @author: wangshilei
 * @create: 2020-05-25 19:21
 **/
@Data
@Entity
public class meets {
    @Id
    private Integer id;//id
    private Integer com_id;//社团id
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//会议时间
    private String adress;//会议地点
    private Integer number;//会议人数
    private String persion;// 主持人
    private String theme;//主题
    private String text;//内容
    private String path;//附件路径
    private String type;//会议类型
}
