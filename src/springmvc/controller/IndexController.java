package springmvc.controller;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.entity.User;

@Controller
public class IndexController {
	
	@RequestMapping(value="toMain", method= {RequestMethod.GET})
	public String toMain(@ModelAttribute User nu, HttpSession session) {
		session.setAttribute("nuser", nu);
		return "Login";
	}
	

}
