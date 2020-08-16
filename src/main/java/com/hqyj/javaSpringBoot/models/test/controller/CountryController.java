package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Description CountryController
 * @Author HymanHu
 * @Date 2020/8/11 14:01
 */
@RestController
@RequestMapping("/api")
public class CountryController {

    @Autowired
    private CountryServcie countryServcie;

    /**
     * 127.0.0.1/api/country/522 ---- get
     */
    @GetMapping("/country/{countryId}")
    public Country getCountryByCountryId(@PathVariable int countryId) {
        return countryServcie.getCountryByCountryId(countryId);
    }

    /**
     * 127.0.0.1/api/country?countryName=China ---- get
     */
    @GetMapping("/country")
    public Country getCountryByCountryName(@RequestParam String countryName) {
        return countryServcie.getCountryByCountryName(countryName);
    }

    /**
     * 127.0.0.1/api/redis/country/522 ---- get
     */
    @GetMapping("/redis/country/{countryId}")
    public Country mograteCountryByRedis(@PathVariable int countryId) {
        return countryServcie.mograteCountryByRedis(countryId);
    }


}
