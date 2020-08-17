package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Card;
import com.hqyj.javaSpringBoot.models.test.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class CardController {
    @Autowired
    CardService service;
/*
127.0.0.1/api/card    -----post
{"cardNo":"jgljdojsdoj"}
* */
@PostMapping(value = "/card", consumes = "application/json")
    public Result<Card> insertcard(@RequestBody Card card) {
        return service.insertcard(card);
    }
}
