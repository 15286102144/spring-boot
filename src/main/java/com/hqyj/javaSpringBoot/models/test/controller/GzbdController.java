package com.hqyj.javaSpringBoot.models.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hqyj.javaSpringBoot.models.test.entity.Gzbd;
import com.hqyj.javaSpringBoot.models.test.service.GzbdService;


@RestController
@RequestMapping("/api")
public class GzbdController {
	
	@Autowired
	private GzbdService gzbdService;
	
	/**
	 * 127.0.0.1/api/gzbds ---- get
	 */
	@GetMapping("/gzbds")
	public List<Gzbd> getGzbds() {
		return gzbdService.getGzbds();
	}

}
