package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.service.IndexService;

@Controller
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	@RequestMapping(value="toLog", method= {RequestMethod.GET})
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}
	
	@RequestMapping(value="logSuccess", method= {RequestMethod.GET})
	public String logSuccess(Model model) {
		return indexService.toIndex(model);
	}
	
	@RequestMapping(value="Home", method={RequestMethod.GET})
	public String getHome(Model model) {
		return indexService.home(model);
	}
	
	@RequestMapping(value="Stu", method={RequestMethod.GET})
	public String getStudent(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.student(uid, m);
	}
	
}
