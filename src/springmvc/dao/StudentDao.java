package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import springmvc.entity.Classes;
import springmvc.entity.Student;
import springmvc.entity.User;

@Repository("studentDao")
@Mapper
public interface StudentDao {
	
	public Student findStudent(String uid, Student s);
	@Select("select * from student where uid=#{uid}")
	public List<Student> findAll(String uid);
	public List<Student> findStudentsByClass(User u, Classes c);
	public List<Student> findStudentsBySubject(User u, Student s);
	public int createStudents(List<Student> ls);
	public String updateStudents(List<Student> ls);
	public String deleteStudents(List<Student> ls);
	
}
