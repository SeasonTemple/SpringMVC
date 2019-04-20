package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import springmvc.entity.User;

public interface UserService {
	
	public String checkUser(User u, Model model, HttpSession session, String code);
	public String register(User u, Model model, HttpSession session, String code);
}
