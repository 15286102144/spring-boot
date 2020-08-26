package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import com.hqyj.javaSpringBoot.models.test.service.StudentSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api")
public class StudentController {

    @Autowired
    private StudentSevice studentSevice;

    /**
     * 127.0.0.1/api/student ---- post
     * {"studentName":"hujiang1","studentCard":{"cardId":"1"}}
     */
    @PostMapping(value = "student", consumes = "application/json")
    public Result<Student> insertStudent(@RequestBody Student student) {
        return studentSevice.insertStudent(student);
    }

    /**
     * 127.0.0.1/api/student/1 ---- get
     */
    @GetMapping("/student/{studentId}")
    public Student getStudentByStudentId(@PathVariable int studentId) {
        return studentSevice.getStudentByStudentId(studentId);
    }

    /**
     * 127.0.0.1/api/students ---- post
     * {"currentPage":"1","pageSize":"5","keyWord":"hu","orderBy":"studentName","sort":"desc"}
     */
    @PostMapping(value = "/students", consumes = "application/json")
    public Page<Student> getStudentsBySearchVo(@RequestBody SearchVo searchVo) {
        return studentSevice.getStudentsBySearchVo(searchVo);
    }

    /**
     * 127.0.0.1/api/students?studentName=hujiang ---- get
     */
    @GetMapping("/students")
    public List<Student> getStudentsByParams(
            @RequestParam String studentName,
            @RequestParam(required = false, defaultValue = "0") Integer cardId) {
        return studentSevice.getStudentsByStudentName(studentName, cardId);
    }
}
