package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Card;

public interface CardService {
    Result<Card> insertcard(Card card);
}
