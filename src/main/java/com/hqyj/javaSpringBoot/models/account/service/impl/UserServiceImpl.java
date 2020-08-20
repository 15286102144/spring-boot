package com.hqyj.javaSpringBoot.models.account.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqyj.javaSpringBoot.models.account.dao.UserDao;
import com.hqyj.javaSpringBoot.models.account.entity.User;
import com.hqyj.javaSpringBoot.models.account.service.UserService;
import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Optional;

/**
 * @Description UserServiceImpl
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Result<User> insertUser(User user) {
        User userTemp = userDao.getUserByUserName(user.getUserName());
        if (userTemp != null) {
            return new Result<User>(
                    Result.ResultStatus.FAILD.status, "用户名已存在！");
        }

        user.setCreateDate(LocalDateTime.now());
        user.setPassword(MD5Util.getMD5(user.getPassword()));
        userDao.insertUser(user);
        return new Result<User>(
                Result.ResultStatus.SUCCESS.status, "添加成功", user);
    }

    @Override
    public Result<User> login(User user) {
        User userTemp = userDao.getUserByUserName(user.getUserName());
        if (userTemp != null &&
                userTemp.getPassword().equals(MD5Util.getMD5(user.getPassword()))) {
            return new Result<>(Result.ResultStatus.SUCCESS.status, "登录成功", userTemp);
        }

        return new Result<User>(Result.ResultStatus.FAILD.status,
                "用户名或密码错误");
    }

    @Override
    public PageInfo<User> getUsersBySearchVo(SearchVo searchVo) {
        searchVo.initSearchVo();
        PageHelper.startPage(searchVo.getCurrentPage(), searchVo.getPageSize());
        return new PageInfo<User>(
                Optional.ofNullable(userDao.getUsersBySearchVo(searchVo))
                        .orElse(Collections.emptyList()));
    }
}
