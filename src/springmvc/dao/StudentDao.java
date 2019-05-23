package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import springmvc.entity.Classes;
import springmvc.entity.Student;
import springmvc.entity.User;

@Repository("studentDao")
@Mapper
public interface StudentDao {
	public List<Student> findAll(User u);
	public List<Student> findStudentsByClass(User u, Classes c);
	public List<Student> findStudentsBySubject(User u, String subject);
}
