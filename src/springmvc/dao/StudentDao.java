package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import springmvc.entity.Classes;
import springmvc.entity.Student;
import springmvc.entity.User;

@Repository("studentDao")
@Mapper
public interface StudentDao {
	
	public Student findStudent(int uid, Student s);
	
	@Select("select * from student where uid=#{uid}")
	@Results({
		@Result(id=true,column="sid",property="sid"),
		@Result(column="sname",property="sname"),
		@Result(column="snum",property="snum"),
		@Result(column="subject",property="subject"),
		@Result(column="cid",property="clas",
		one=@One(select="springmvc.dao.ClassesDao.findById",fetchType=FetchType.EAGER)),
		@Result(column="uid",property="u",
		one=@One(select="springmvc.dao.UserDao.findById",fetchType=FetchType.EAGER))
	})
	public List<Student> findAll(Integer uid);
	public List<Student> findStudentsByClass(Integer uid, Classes c);
	public List<Student> findStudentsBySubject(Integer uid, Student s);
	public int createStudents(List<Student> ls);
	public String updateStudents(List<Student> ls);
	public String deleteStudents(List<Student> ls);
	
}
