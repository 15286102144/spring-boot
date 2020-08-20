package com.hqyj.javaSpringBoot.models.account.service;

import com.github.pagehelper.PageInfo;
import com.hqyj.javaSpringBoot.models.account.entity.User;
import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;

public interface UserService {

    Result<User> insertUser(User user);

    Result<User> login(User user);

    PageInfo<User> getUsersBySearchVo(SearchVo searchVo);
}
