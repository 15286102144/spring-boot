package com.hqyj.javaSpringBoot.models.test.repository;

import com.hqyj.javaSpringBoot.models.test.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Integer> {

    List<Student> findByStudentName(String studentName);

    List<Student> findByStudentNameLike(String studentName);

    List<Student> findTop3ByStudentNameLike(String studentName);

    /*
        问号传参
        @Query("select s from  Student s where s.studentName=?1 and s.studentCard.cardId=?2")
        List<Student> getstudentBystudentName(String studentName, int cardId);
    */
//：传参
  /*  @Query(value = "select s from  Student s where s.studentName = :studentName " +
            " and s.studentCard.cardId= :cardId")
    List<Student> getstudentBystudentName(@Param("studentName") String studentName, @Param("cardId") int cardId);*/

    //原sql传参
    @Query(nativeQuery = true,value = "select * from  h_student  where student_name = :studentName " +
            " and card_id= :cardId")
    List<Student> getstudentBystudentName(@Param("studentName") String studentName, @Param("cardId") int cardId);

}
