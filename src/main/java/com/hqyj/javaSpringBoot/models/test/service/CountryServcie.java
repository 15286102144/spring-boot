package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.test.entity.Country;

public interface CountryServcie {

    Country getCountryByCountryId(int countryId);

    Country getCountryByCountryName(String countryName);

    Country migrateCountryByRedis(int countryId);
}
