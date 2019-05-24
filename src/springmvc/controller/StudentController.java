package springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public List<Student> findAll(String uid, HttpSession session) {
		List<Student> ls = studentService.findAll(uid, session);
		return ls;
	}
}
