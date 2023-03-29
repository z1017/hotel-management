package com.example.springboot.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDate;


@Data
public class Reserve implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private Integer id;

    /**
     * 房间名称
     */
    private String hotelName;

    /**
     * 房间号
     */
    private String hotelNo;

    /**
     * 用户会员码
     */
    private String userNo;

    /**
     * 用户名称
     */
    private String userName;

    /**
     * 用户联系方式
     */
    private String userPhone;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private LocalDate createtime;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private LocalDate updatetime;

    /**
     * 订房积分
     */
    private Integer score;
    private String status;
    private Integer days;
    private LocalDate returnDate;
    // 提醒状态 即将到期（-1）  已到期（当天）  已过期（超过退房日期之后）
    private String note;
}