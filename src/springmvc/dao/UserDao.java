package springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import springmvc.entity.User;

@Repository("userDao")
@Mapper
public interface UserDao {
	
	public List<User> checkUser(User u);
	public int register(User u);
}
