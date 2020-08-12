package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import com.hqyj.javaSpringBoot.models.test.repository.StudentRepository;
import com.hqyj.javaSpringBoot.models.test.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
@Repository
public class StudentServiceimpl implements StudentService {
    @Autowired
    StudentRepository studentRepository;
    @Override
    public Result<Student> insertstudent(Student student) {
        student.setCreateDate(LocalDateTime.now());
        studentRepository.saveAndFlush(student);
        return new Result<Student>(Result.ResultStatus.SUCCESS.status,"insert success",student);
    }
}
