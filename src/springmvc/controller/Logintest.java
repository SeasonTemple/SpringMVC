package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Logintest {
	
	@RequestMapping("/login")
	public String login() {
		return "start";
	}
}
