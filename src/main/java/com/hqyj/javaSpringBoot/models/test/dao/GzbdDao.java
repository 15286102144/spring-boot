package com.hqyj.javaSpringBoot.models.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.hqyj.javaSpringBoot.models.test.entity.Gzbd;


@Repository
@Mapper
public interface GzbdDao {
	
	@Select("select * from m_gzbd order by date desc")
	List<Gzbd> getGzbds();

}
