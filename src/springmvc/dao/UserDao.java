package springmvc.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import springmvc.entity.User;

@Repository("userDao")
@Mapper
public interface UserDao {
	
	@Select("select * from user where uname=#{uname} and pwd=#{pwd}")
	public User checkUser(User u);

	@Insert("insert into user(uid,uname,pwd,email,profile) values(null,#{uname},#{pwd},#{email},#{profile})")
	public int register(User u);
	
	@Select("select * from user where uid=#{uid}")
	public User findById(Integer uid);
	
}
