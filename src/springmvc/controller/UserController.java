package springmvc.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import springmvc.entity.User;
import springmvc.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="login", method= {RequestMethod.POST})
	@ResponseBody
	public User login(@RequestBody User u, HttpSession session){
		System.out.println("[logValidate]");
		return userService.login(u, session);
	}
	
	@RequestMapping(value="register", method= {RequestMethod.POST})
	@ResponseBody
	public User register(@Valid @RequestBody User u, BindingResult result, HttpSession session) {
		return userService.register(u, result, session);
	}
	
	@RequestMapping(value="exit", method= {RequestMethod.GET})
	public String exit(HttpSession session) {
		session.invalidate();
		return "redirect:/toLog";
	}
}
