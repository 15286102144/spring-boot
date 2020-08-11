package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.test.dao.CountryDao;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description CountryServcieImpl
 * @Author HymanHu
 * @Date 2020/8/11 13:59
 */
@Service
public class CountryServcieImpl implements CountryServcie {

    @Autowired
    private CountryDao countryDao;

    @Override
    public Country getCountryByCountryId(int countryId) {
        return countryDao.getCountryByCountryId(countryId);
    }

    @Override
    public Country getCountryByCountryName(String countryName) {
        return countryDao.getCountryByCountryName(countryName);
    }
}
