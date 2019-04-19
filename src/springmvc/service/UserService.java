package springmvc.service;

import springmvc.entity.User;

public interface UserService {
	
	public User checkUser(User u);
	public int register(User u);
}
