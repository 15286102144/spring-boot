package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Card;
import com.hqyj.javaSpringBoot.models.test.repository.CardRepository;
import com.hqyj.javaSpringBoot.models.test.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CardServiceimpl implements CardService {

    @Autowired
    CardRepository repository;
    @Override
    @Transactional
    public Result<Card> insertcard(Card card) {
        repository.saveAndFlush(card);
        return new Result<Card>(Result.ResultStatus.SUCCESS.status,"insert success",card);
    }
}
