package com.hqyj.javaSpringBoot.models.test.service.impl;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hqyj.javaSpringBoot.models.test.dao.GzbdDao;
import com.hqyj.javaSpringBoot.models.test.entity.Gzbd;
import com.hqyj.javaSpringBoot.models.test.service.GzbdService;


@Service
public class GzbdServiceImpl implements GzbdService {
	
	@Autowired
	private GzbdDao gzbdDao;

	@Override
	public List<Gzbd> getGzbds() {
		return Optional.ofNullable(gzbdDao.getGzbds()).orElse(Collections.emptyList());
	}

}
