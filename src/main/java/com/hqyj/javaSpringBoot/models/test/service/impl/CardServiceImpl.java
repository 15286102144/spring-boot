package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Card;
import com.hqyj.javaSpringBoot.models.test.repository.CardRepository;
import com.hqyj.javaSpringBoot.models.test.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class CardServiceImpl implements CardService {

    @Autowired
    private CardRepository cardRepository;

    @Override
    @Transactional
    public Result<Card> insertCard(Card card) {
        cardRepository.saveAndFlush(card);
        return new Result<Card>(
                Result.ResultStatus.SUCCESS.status,
                "Insert success.", card);
    }
}
