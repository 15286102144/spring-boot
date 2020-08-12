package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Student;

public interface StudentService {
    Result<Student> insertstudent(Student student);
}
