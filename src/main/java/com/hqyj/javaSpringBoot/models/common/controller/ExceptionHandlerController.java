package com.hqyj.javaSpringBoot.models.common.controller;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
@Order(Ordered.HIGHEST_PRECEDENCE)
public class ExceptionHandlerController {

    @ExceptionHandler(value = AuthorizationException.class)
    @ResponseBody
    public Result<String> handle403() {
        return new Result<>(Result.ResultStatus.FAILED.status,
                "", "/common/403");
    }
}