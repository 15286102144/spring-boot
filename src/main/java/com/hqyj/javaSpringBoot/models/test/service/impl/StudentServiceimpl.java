package com.hqyj.javaSpringBoot.models.test.service.impl;

import com.fasterxml.jackson.databind.deser.DataFormatReaders;
import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import com.hqyj.javaSpringBoot.models.test.repository.StudentRepository;
import com.hqyj.javaSpringBoot.models.test.service.StudentService;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.Match;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Repository
public class StudentServiceimpl implements StudentService {
    @Autowired
    StudentRepository studentRepository;

    @Override
    public Result<Student> insertstudent(Student student) {
        student.setCreateDate(LocalDateTime.now());
        studentRepository.saveAndFlush(student);
        return new Result<Student>(Result.ResultStatus.SUCCESS.status, "insert success", student);
    }

    @Override
    public Student getstudentBystudentid(int studentId) {
        return studentRepository.findById(studentId).get();
    }

    @Override
    public Page<Student> getstudentBysearchvo(SearchVo searchVo) {
        //排序方式
        Sort.Direction direction = "desc".equalsIgnoreCase(searchVo.getSort()) ?
                Sort.Direction.DESC : Sort.Direction.ASC;
        //isBlank判断非空空字符串结果为""和"  "都为true，isempty空字符串"  "为false ""为true
        Sort sort = new Sort(direction, StringUtils.isBlank(searchVo.getOrderBy()) ? "studentId" : searchVo.getOrderBy());
        //起始页从0开始
        Pageable pageable = PageRequest.of(searchVo.getCurrentPage() - 1, searchVo.getPageSize(), sort);
        Student student = new Student();
        //Example 设置查询条件，当前页，每页数目，排序
        ExampleMatcher matcher = ExampleMatcher.matching().withMatcher("studentName", matdd -> matdd.contains()).withIgnorePaths("studentId");
        Example<Student> example = Example.of(student, matcher);
        return studentRepository.findAll(example, pageable);
    }

    @Override
    public List<Student> getstudentBystudentName(String studentName, Integer cardId) {
        return Optional.ofNullable(studentRepository.getstudentBystudentName(studentName,cardId)).orElse(Collections.emptyList());
    }

    @Override
    public List<Student> getstudenttopBystudentNamelike(String studentName) {
        //占位符%s将传入参数变为小写，%S 将参数格式化为全大写
        return Optional.ofNullable(studentRepository.findTop3ByStudentNameLike(String.format("%s%S%s","%",studentName,"%"))).orElse(Collections.emptyList());

    }

    @Override
    public List<Student> getstudentBystudentNamelike(String studentName) {
        return Optional.ofNullable(studentRepository.findByStudentNameLike(String.format("%s%S%s","%",studentName,"%"))).orElse(Collections.emptyList());
    }

    @Override
    public List<Student> getstudentBystudentName(String studentName) {
        return Optional.ofNullable(studentRepository.findByStudentName(studentName)).orElse(Collections.emptyList());
    }
}
