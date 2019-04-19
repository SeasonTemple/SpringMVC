package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test {

	@RequestMapping("/log")
	public String log() {
		System.out.println("Success!");
		return "NewFile";
	}
}
