package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Logintest {
	
	@RequestMapping("/index/login")
	public String login() {
		return "ss";
	}
}
