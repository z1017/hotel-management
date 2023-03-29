package com.example.springboot.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @description hotel
 * @date 2023-03-20
 */

@Data
public class Hotel extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 名称
     */
    private String name;

    /**
     * 描述
     */
    private String description;

    /**
     * 日期
     */
    private String hotelDate;

    /**
     * 负责人
     */
    private String head;

    /**
     * 分类
     */
    private String category;

    /**
     * 房间码
     */
    private String hotelNo;

    /**
     * 图片
     */
    private String cover;


    private List<String> categories;
    private Integer score;
    private Integer nums;
}
