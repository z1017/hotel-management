package com.example.springboot.mapper;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Hotel;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HotelMapper {

    List<Hotel> list();

    List<Hotel> listByCondition(BaseRequest baseRequest);

    void save(Hotel obj);

    Hotel getById(Integer id);

    void updateById(Hotel user);

    void deleteById(Integer id);

    Hotel getByNo(String hotelNo);

    void updateNumByNo(String hotelNo);




//    Hotel getByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
//
//    int updatePassword(PasswordRequest request);
//
//    Hotel getByUsername(String username);


}
