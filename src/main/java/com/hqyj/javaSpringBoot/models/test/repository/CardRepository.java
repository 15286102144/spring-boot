package com.hqyj.javaSpringBoot.models.test.repository;

import com.hqyj.javaSpringBoot.models.test.entity.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CardRepository extends JpaRepository<Card, Integer> {
}
