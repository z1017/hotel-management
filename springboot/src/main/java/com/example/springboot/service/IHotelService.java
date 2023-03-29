package com.example.springboot.service;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Hotel;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface IHotelService {

    List<Hotel> list();

    PageInfo<Hotel> page(BaseRequest baseRequest);

    void save(Hotel obj);

    Hotel getById(Integer id);

    void update(Hotel obj);

    void deleteById(Integer id);

}
