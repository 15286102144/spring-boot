package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.test.vo.ApplicationTest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "djfsdifidsfidsfsdfsdk";
    }
}

