package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.test.entity.City;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.service.CityService;
import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import com.hqyj.javaSpringBoot.models.test.vo.ApplicationTest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/test")
public class TestController {

    private final static Logger LOGGER =LoggerFactory.getLogger(TestController.class);
    @Value("${server.port}")
    private int port;
    @Value("${com.name}")
    private String name;
    @Value("${com.age}")
    private int age;
    @Value("${com.desc}")
    private String desc;
    @Value("${com.random}")
    private String random;



@GetMapping("/logtest")
@ResponseBody
    public  String logtest(){
        LOGGER.trace("trace");
        LOGGER.debug("debug");
        LOGGER.info("info");
        LOGGER.warn("warn");
        LOGGER.error("error");
        return "logtest";
    }
@GetMapping("/config")
@ResponseBody
    public String configtest(){
    StringBuffer s=new StringBuffer();
                s
                .append(port).append("-----")
                .append(name).append("-----")
                .append(age).append("-----")
                .append(desc).append("-----")
                .append(random).append("-----").append("<br>");
               s
                .append(applicationTest.getPort()).append("-----")
                .append(applicationTest.getName()).append("-----")
                .append(applicationTest.getAge()).append("-----")
                .append(applicationTest.getDesc()).append("-----")
                .append(applicationTest.getRandom()).append("-----").append("<br>");
               return s.toString();
    }

@Autowired
    private ApplicationTest applicationTest;
    //git方式请求
    @GetMapping("demo1")
    @ResponseBody
    public String text(){
        return "ddsfsdfsdk6333554784";
    }
    @Autowired
    private CityService cityService;
    @Autowired
    private CountryServcie countryServcie;

    /**
     * 127.0.0.1/test/index
     */
    @GetMapping("/index")
    public String testIndexPage(ModelMap modelMap) {
        int countryId = 522;
        List<City> cities = cityService.getCitiesByCountryId(countryId);
        cities = cities.stream().limit(10).collect(Collectors.toList());
        Country country = countryServcie.getCountryByCountryId(countryId);

        modelMap.addAttribute("thymeleafTitle", "1234665564");
        modelMap.addAttribute("checked", true);
        modelMap.addAttribute("currentNumber", 99);
        modelMap.addAttribute("changeType", "checkbox");
        modelMap.addAttribute("baiduUrl", "/test/log");
        modelMap.addAttribute("city", cities.get(0));
        modelMap.addAttribute("shopLogo",
                "http://cdn.duitang.com/uploads/item/201308/13/20130813115619_EJCWm.thumb.700_0.jpeg");
        modelMap.addAttribute("shopLogo",
                "/upload/1111.png");
        modelMap.addAttribute("country", country);
        modelMap.addAttribute("cities", cities);
        modelMap.addAttribute("updateCityUri", "/api/city");
        modelMap.addAttribute("template", "test/index");
        // 返回外层的碎片组装器
        return "index";
    }

    /**
     * 127.0.0.1/test/index2
     */
    @GetMapping("/index2")
    public String testIndex2Page(ModelMap modelMap) {
        modelMap.addAttribute("template", "test/index2");
        return "index";
    }
}

