package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import springmvc.entity.BfUser;
import springmvc.service.IndexService;

@Controller
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	@RequestMapping(value="toLog", method= {RequestMethod.GET})
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}
	
	@RequestMapping(value="bflog", method={RequestMethod.POST})
	@ResponseBody
	public BfUser beforeSubmit(@RequestBody BfUser u, HttpSession session){
		System.out.println("[beforeSubmit]");
		return indexService.beforeSubmit(u, session);
	}
	
	@RequestMapping(value="success", method= {RequestMethod.GET})
	public String logSuccess() {
		return "start";
	}
	
}
