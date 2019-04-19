package springmvc.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import springmvc.entity.User;

@Repository("userDao")
@Mapper
public interface UserDao {
	
	public User checkUser(User u);
	public int register(User u);
}
