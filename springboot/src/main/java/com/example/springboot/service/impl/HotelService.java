package com.example.springboot.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Hotel;
import com.example.springboot.exception.ServiceException;
import com.example.springboot.mapper.HotelMapper;
import com.example.springboot.service.IHotelService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.util.List;

@Service
@Slf4j
public class HotelService implements IHotelService {

    @Resource
    HotelMapper hotelMapper;


    @Override
    public List<Hotel> list() {
        return hotelMapper.list();
    }

    @Override
    public PageInfo<Hotel> page(BaseRequest baseRequest) {
        PageHelper.startPage(baseRequest.getPageNum(), baseRequest.getPageSize());
        return new PageInfo<>(hotelMapper.listByCondition(baseRequest));
    }

    @Override
    public void save(Hotel obj) {
        try {
            obj.setCategory(category(obj.getCategories()));
            hotelMapper.save(obj);
        } catch (Exception e) {
            throw new ServiceException("数据插入错误", e);
        }

    }

    @Override
    public Hotel getById(Integer id) {
        return hotelMapper.getById(id);
    }

    @Override
    public void update(Hotel obj) {

        try {
            obj.setCategory(category(obj.getCategories()));
            obj.setUpdatetime(LocalDate.now());
            hotelMapper.updateById(obj);
        } catch (Exception e) {
            throw new ServiceException("数据更新错误",e);
        }

    }

    @Override
    public void deleteById(Integer id) {
        hotelMapper.deleteById(id);
    }

    private String category(List<String> categories) {
        StringBuilder sb = new StringBuilder();
        if (CollUtil.isNotEmpty(categories)) {
            categories.forEach(v -> sb.append(v).append(" > "));
            return sb.substring(0, sb.lastIndexOf(" > "));
        }
        return sb.toString();
    }

}