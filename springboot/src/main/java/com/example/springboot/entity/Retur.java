package com.example.springboot.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDate;

@Data
public class Retur {

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
     * 用户id
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
    private LocalDate realDate;

}
