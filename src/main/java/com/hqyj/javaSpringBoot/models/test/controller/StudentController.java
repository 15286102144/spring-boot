package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.common.vo.Result;
import com.hqyj.javaSpringBoot.models.common.vo.SearchVo;
import com.hqyj.javaSpringBoot.models.test.entity.Student;
import com.hqyj.javaSpringBoot.models.test.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    /*
     * 127.0.0.1/api/student/1  -----get
     *
     * */
    @GetMapping(value = "/student/{studentId}")
    public Student getstudentBystudentid(@PathVariable int studentId) {
        return service.getstudentBystudentid(studentId);
    }
    /*
    * 127.0.0.1/api/students  ----post
    *  {"currentPage":"1","pageSize":"5","keyWord":"j","orderBy":"studentName","sort":"desc"}
    * */
    @PostMapping(value = "/students",consumes = "application/json")
    public Page<Student> getstudentBysearchvo(@RequestBody SearchVo searchVo) {
        return  service.getstudentBysearchvo(searchVo);
    }
    /*
    /127.0.0.1/api/studentt?studentName=ugdfdf -----get
     */
    @GetMapping(value = "/studentt")
    public List<Student> getstudentBystudentName(@RequestParam String studentName) {
        return service.getstudentBystudentName(studentName);
    }
    /*
    * 127.0.0.1/api/student1?studentName=j   get
    * */
@GetMapping(value = "student1")
    public List<Student> getstudentBystudentNamelike(@RequestParam String studentName) {
        return  service.getstudentBystudentNamelike(studentName);
    }

    /*模糊查询
     * 127.0.0.1/api/student2?studentName=j   get
     * */
    @GetMapping(value = "student2")
    public List<Student> getstudenttopBystudentNamelike(@RequestParam String studentName) {
        return service.getstudenttopBystudentNamelike(studentName);
    }

    /*
     * 127.0.0.1/api/student3?studentName=j&cardId=2   get
     * */
    @GetMapping(value = "student3")
    public List<Student> getstudenttopBystudentNameparm(@RequestParam String studentName,@RequestParam(required = false,defaultValue = "1") int cardId) {
        return service.getstudentBystudentName(studentName,cardId);
    }

}
