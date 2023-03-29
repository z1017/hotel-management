package com.example.springboot.controller.request;

import lombok.Data;

@Data
public class HotelPageRequest extends BaseRequest{
    private String name;
    private String hotelNo;
}
