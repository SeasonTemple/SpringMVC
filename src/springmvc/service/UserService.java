package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.validation.BindingResult;

import springmvc.entity.User;

public interface UserService {
	
	public User login(User u, HttpSession session);
	public User register(User u, BindingResult bindingResult, HttpSession session);
}
