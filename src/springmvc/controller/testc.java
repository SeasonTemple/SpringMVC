package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testc {

	@RequestMapping("/start")
	public String start() {
		return "start";
	}
}
