package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.entity.Country;

/**
 * @Description CountryServcie
 * @Author HymanHu
 * @Date 2020/8/11 13:59
 */
public interface CountryServcie {

    Country getCountryByCountryId(int countryId);

    Country getCountryByCountryName(String countryName);

    Country mograteCountryByRedis(int countryId);
}
