package springmvc.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import springmvc.entity.Student;
import springmvc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="/findAll/{uid}", method= {RequestMethod.GET})
	public String findAll(@PathVariable(value="uid") Integer uid, HttpSession session) {
		return studentService.findAll(uid, session);
	}
	
	@RequestMapping(value="/preLoadClassInfo/{uid}", method= {RequestMethod.GET})
	public String preLoadClassInfo(@PathVariable(value="uid") Integer uid, HttpSession session) {
//		System.out.println(Integer.parseInt(uid.replace("uid=","")));
		return studentService.preLoadClassInfo(uid, session);
	}
	
	@RequestMapping(value="createStudent", method= {RequestMethod.POST})
	@ResponseBody
	public String createStudent(@RequestBody Student s) {
		System.out.println(s);
		return studentService.createStudents(s);
	}
	
	@RequestMapping(value="deleteStudents", method= {RequestMethod.POST})
	@ResponseBody
	public String deleteStudents(@RequestBody String ids, HttpSession session) {
		System.out.println(ids);
		return studentService.deleteStudents(ids.replace("\"", ""), session);
	}
	
}
