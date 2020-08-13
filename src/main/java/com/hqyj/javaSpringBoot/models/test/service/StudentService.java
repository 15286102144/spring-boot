package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import org.springframework.data.domain.Page;

import java.util.List;

public interface StudentService {
    Result<Student> insertstudent(Student student);

    Student getstudentBystudentid(int studentId);

    Page<Student> getstudentBysearchvo(SearchVo searchVo);

    List<Student> getstudentBystudentName(String studentName);

    List<Student> getstudentBystudentNamelike(String studentName);

    List<Student> getstudenttopBystudentNamelike(String studentName);

    List<Student> getstudentBystudentName(String studentName, Integer cardId);
}
