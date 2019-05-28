package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import springmvc.entity.User_Classes;

@Repository("user_ClassesDao")
@Mapper
public interface User_ClassesDao {

	@Select("select * from teacher_class where u_id=#{uid}")
	@Results({
		@Result(id=true,column="id",property="id"),
		@Result(column="c_id",property="clas",
		one=@One(select="springmvc.dao.ClassesDao.findById",fetchType=FetchType.EAGER)),
		@Result(column="u_id",property="u",
		one=@One(select="springmvc.dao.UserDao.findById",fetchType=FetchType.EAGER))
	})
	public List<User_Classes> findAllByUid(Integer uid);
}
