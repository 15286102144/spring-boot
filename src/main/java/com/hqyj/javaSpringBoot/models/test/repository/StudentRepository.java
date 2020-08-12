package com.hqyj.javaSpringBoot.models.test.repository;

import com.hqyj.javaSpringBoot.models.test.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student,Integer> {
}
