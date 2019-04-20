package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.service.IndexService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/toMain")
	public String toMain() {
		return "Login";
	}
	

}
