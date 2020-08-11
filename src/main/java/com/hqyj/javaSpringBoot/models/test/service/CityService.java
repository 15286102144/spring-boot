package com.hqyj.javaSpringBoot.models.test.service;

import com.github.pagehelper.PageInfo;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.City;

import java.util.List;

/**
 * @Description CityService
 * @Author HymanHu
 * @Date 2020/8/11 14:09
 */
public interface CityService {

    List<City> getCitiesByCountryId(int countryId);

    PageInfo<City> getCitiesBySearchVo(int countryId, SearchVo searchVo);
}