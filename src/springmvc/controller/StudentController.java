package springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import springmvc.entity.Student;
import springmvc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="findAll", method= {RequestMethod.POST})
	@ResponseBody
	public List<Student> findAll(@RequestBody String uid, Model m) {
		List<Student> ls = studentService.findAll(uid, m);
		m.addAttribute("Students", ls);
		return ls;
	}
}