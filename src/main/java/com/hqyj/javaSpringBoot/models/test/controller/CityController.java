package com.hqyj.javaSpringBoot.models.test.controller;

import com.github.pagehelper.PageInfo;
import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.City;
import com.hqyj.javaSpringBoot.models.test.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Description CityController
 * @Author HymanHu
 * @Date 2020/8/11 14:12
 */
@RestController
@RequestMapping("/api")
public class CityController {

    @Autowired
    private CityService cityService;

    /**
     * 127.0.0.1/api/cities/522 ---- get
     */
    @GetMapping("/cities/{countryId}")
    public List<City> getCitiesByCountryId(@PathVariable  int countryId) {
        return cityService.getCitiesByCountryId(countryId);
    }

    /**
     * 127.0.0.1/api/cities/522 --- post
     * {"currentPage":"1","pageSize":"5"}
     */
    @PostMapping(value = "/cities/{countryId}", consumes = "application/json")
    public PageInfo<City> getCitiesBySearchVo(
            @PathVariable int countryId, @RequestBody SearchVo searchVo) {
        return cityService.getCitiesBySearchVo(countryId, searchVo);
    }

    /**
     * 127.0.0.1/api/cities --- post
     * {"currentPage":"1","pageSize":"5","keyWord":"sh","orderBy":"city_name","sort":"desc"}
     */
    @PostMapping(value = "/cities", consumes = "application/json")
    public PageInfo<City> getCitiesBySearchVo(@RequestBody SearchVo searchVo) {
        return cityService.getCitiesBySearchVo(searchVo);
    }

    /**插入
     * 127.0.0.1/api/cititt---- post
     * {"cityName":"test1","localCityName":"freeCity","countryId":"522"}
     */
    @PostMapping(value = "/cititt", consumes = "application/json")
    public Result<City> insertcity(@RequestBody City city) {
      return   cityService.insertcity(city);
    }
    /**修改
     * 127.0.0.1/api/cititt---- put
     * {"cityName":"6666","cityId":"2258"}
     */
    @PutMapping(value = "/cititt", consumes = "application/x-www-form-urlencoded")
    public Result<City> updateCity(@ModelAttribute City city) {
        return cityService.updateCity(city);
    }

    /**删除
     * 127.0.0.1/api/cititt/2258 ---- delete
     */
    @DeleteMapping("/cititt/{cityId}")
    public Result<Object> deleteCity(@PathVariable int cityId) {
        return cityService.deleteCity(cityId);
    }
}
