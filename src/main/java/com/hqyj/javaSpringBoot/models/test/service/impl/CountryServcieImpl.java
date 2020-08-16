package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.test.dao.CountryDao;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import com.hqyj.javaSpringBoot.utils.RedisUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
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

   /* @Autowired
    private RedisTemplate redisTemplate;*/

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

  /*  @Override
    public Country mograteCountryByRedis(int countryId) {
        Country country = countryDao.getCountryByCountryId(countryId);
        String countryKey = String.format("country%d", countryId);
redisTemplate.opsForValue().set(countryKey,country);
        return (Country) redisTemplate.opsForValue().get(countryKey);
    }*/

    @Override
    public Country mograteCountryByRedis(int countryId) {
        Country country = countryDao.getCountryByCountryId(countryId);
        String countryKey = String.format("country%d", countryId);
        redisUtils.set(countryKey, country);
        return (Country) redisUtils.get(countryKey);
    }
}
