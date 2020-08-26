package com.hqyj.javaSpringBoot.models.test.service;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import org.springframework.data.domain.Page;

import java.util.List;


public interface StudentSevice {

    Result<Student> insertStudent(Student student);

    Student getStudentByStudentId(int studentId);

    Page<Student> getStudentsBySearchVo(SearchVo searchVo);

    List<Student> getStudentsByStudentName(String studentName, int cardId);
}
