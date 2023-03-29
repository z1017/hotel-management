package com.example.springboot.service;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Reserve;
import com.example.springboot.entity.Retur;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface IReserveService {

    List<Reserve> list();

    PageInfo<Reserve> page(BaseRequest baseRequest);

    void save(Reserve obj);

    PageInfo<Retur> pageRetur(BaseRequest baseRequest);

    void saveRetur(Retur obj);

    Reserve getById(Integer id);

    void update(Reserve obj);

    void deleteById(Integer id);

    void deleteReturById(Integer id);

    Map<String, Object> getCountByTimeRange(String timeRange);
}
