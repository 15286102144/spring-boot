package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import com.hqyj.javaSpringBoot.models.test.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class StudentController {
    @Autowired
   private StudentService service;
    /*
    * 127.0.0.1/api/student  -----post
    * {"studentName":"112323","studentCard":{"cardId":"1"}}
    * */
    @PostMapping(value = "student",consumes = "application/json")
    public Result<Student> insertstudent(@RequestBody Student student) {
        return service.insertstudent(student);
    }

}
