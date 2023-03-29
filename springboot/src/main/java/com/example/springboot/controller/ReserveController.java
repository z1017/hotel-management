package com.example.springboot.controller;

import com.example.springboot.common.Result;
import com.example.springboot.controller.request.ReservePageRequest;
import com.example.springboot.entity.Reserve;
import com.example.springboot.entity.Retur;
import com.example.springboot.service.IReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin
@RestController
@RequestMapping("/reserve")
public class ReserveController {

    @Autowired
    IReserveService reserveService;


    @PostMapping("/save")
    public Result save(@RequestBody Reserve obj) {
        reserveService.save(obj);
        return Result.success();
    }

    @PutMapping("/update")
    public Result update(@RequestBody Reserve obj) {
        reserveService.update(obj);
        return Result.success();
    }

    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id) {
        reserveService.deleteById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result getById(@PathVariable Integer id) {
        Reserve obj = reserveService.getById(id);
        return Result.success(obj);
    }

    @GetMapping("/list")
    public Result list() {
        List<Reserve> list = reserveService.list();
        return Result.success(list);
    }

    @GetMapping("/page")
    public Result page(ReservePageRequest pageRequest) {
        return Result.success(reserveService.page(pageRequest));
    }

    @GetMapping("/pageRetur")
    public Result pageRetur(ReservePageRequest pageRequest) {
        return Result.success(reserveService.pageRetur(pageRequest));
    }

    @PostMapping("/saveRetur")
    public Result saveRetur(@RequestBody Retur obj) {
        reserveService.saveRetur(obj);
        return Result.success();
    }

    @DeleteMapping("/deleteRetur/{id}")
    public Result deleteRetur(@PathVariable Integer id) {
        reserveService.deleteReturById(id);
        return Result.success();
    }

//      timeRange: week month month2 month3
    @GetMapping("/lineCharts/{timeRange}")
    public Result lineCharts(@PathVariable String timeRange) {
        return Result.success(reserveService.getCountByTimeRange(timeRange));
    }

}
