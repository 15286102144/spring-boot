package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.test.dao.CountryDao;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import com.hqyj.javaSpringBoot.utils.RedisUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CountryServcieImpl implements CountryServcie {

    @Autowired
    private CountryDao countryDao;
    @Autowired
    private RedisUtils redisUtils;

    @Override
    public Country getCountryByCountryId(int countryId) {
        return countryDao.getCountryByCountryId(countryId);
    }

    @Override
    public Country getCountryByCountryName(String countryName) {
        return countryDao.getCountryByCountryName(countryName);
    }

    @Override
    public Country migrateCountryByRedis(int countryId) {
        Country country = countryDao.getCountryByCountryId(countryId);

        String countryKey = String.format("country%d", countryId);
        redisUtils.set(countryKey, country);

        return (Country) redisUtils.get(countryKey);
    }
}
