package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import springmvc.entity.User;

public interface UserService {
	
	public User login(User u, HttpSession session);
	public String register(User u, Model model, HttpSession session, String code);
}
