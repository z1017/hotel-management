package com.example.springboot.mapper;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Reserve;
import com.example.springboot.entity.Retur;
import com.example.springboot.mapper.po.ReserveReturCountPO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ReserveMapper {
    List<Reserve> list();

    List<Reserve> listByCondition(BaseRequest baseRequest);
    List<Retur> listReturByCondition(BaseRequest baseRequest);

    void save(Reserve obj);

    Reserve getById(Integer id);

    void updateById(Reserve user);

    void deleteById(Integer id);

    void saveRetur(Retur obj);

    void deleteReturById(Integer id);

    void updateStatus(String status, Integer id);

    List<ReserveReturCountPO> getCountByTimeRange(@Param("timeRange") String timeRange, @Param("type") int type);  // 1 borrow  2 return
}
