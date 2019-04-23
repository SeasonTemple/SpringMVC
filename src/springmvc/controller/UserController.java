package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.entity.User;
import springmvc.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="log", method= {RequestMethod.POST})
	public String login(@ModelAttribute User u, Model model, HttpSession session, String code) {
		return userService.checkUser(u, model, session, code);
	}
	@RequestMapping(value="register", method= {RequestMethod.POST})
	public String register(@ModelAttribute User u, Model model, HttpSession session, String code) {
		return userService.register(u, model, session, code);
	}
	
	@RequestMapping(value="exit", method= {RequestMethod.GET})
	public String exit(HttpSession session) {
		session.invalidate();
		return "forward:/toMain";
	}
}
