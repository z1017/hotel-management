package com.example.springboot.controller.request;

import lombok.Data;

@Data
public class ReservePageRequest extends BaseRequest{
    private String hotelName;
    private String hotelNo;
    private String userName;
}
