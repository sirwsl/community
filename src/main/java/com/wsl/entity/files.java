package com.wsl.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * @program: community
 * @description: 社团文件管理
 * @author: wangshilei
 * @create: 2020-05-26 21:33
 **/
@Entity
@Data
public class files {
    @Id
    private Integer id;//id
    private String name;//名字
    private String path;//路径
    private String peo_id;//上传人

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;//上传日期
}
