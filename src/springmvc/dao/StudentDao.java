package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import springmvc.dao.provider.StudentDynaSqlProvider;
import springmvc.entity.Classes;
import springmvc.entity.Student;

@Repository("studentDao")
@Mapper
public interface StudentDao {
	
	@Select("select * from student where sid=#{sid}")
	@Results({
		@Result(id=true,column="sid",property="sid"),
		@Result(column="sname",property="sname"),
		@Result(column="grade",property="grade"),
		@Result(column="snum",property="snum"),
		@Result(column="subject",property="subject"),
		@Result(column="cid",property="clas",
		one=@One(select="springmvc.dao.ClassesDao.findById",fetchType=FetchType.EAGER)),
		@Result(column="uid",property="u",
		one=@One(select="springmvc.dao.UserDao.findById",fetchType=FetchType.EAGER))
	})
	public Student findStudent(int sid);
	
	@Select("select * from student where uid=#{uid}")
	@Results({
		@Result(id=true,column="sid",property="sid"),
		@Result(column="sname",property="sname"),
		@Result(column="grade",property="grade"),
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
	
	@Insert("insert into student(sid,sname,grade,snum,subject,cid,uid) value(null,#{sname},#{grade},#{snum},#{subject},#{cid},#{uid})")
	public int createStudents(Student s);
	
	@SelectProvider(type=StudentDynaSqlProvider.class,method="updateStudent")
	public int updateStudents(Student s);
	
	@Delete({"<script>",
			"delete from student where sid in ",
			"<foreach item=\"ids\" collection=\"list\" index=\"no\" open=\"(\" separator=\",\" close=\")\">",
			"#{ids}",
			"</foreach>",
			"</script>"})
	public int deleteStudents(List<String> ids);
	
}
