package com.hqyj.javaSpringBoot.models.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class TestController {
    //git方式请求
    @GetMapping("demo1")
    @ResponseBody
    public String text(){
        return "djfsdifidsfidsfsdfsdk";
    }
}

