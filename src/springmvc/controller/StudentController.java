package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value="/findAll/{uid}", method= {RequestMethod.GET})
	public String findAll(@PathVariable(value="uid") Integer uid, HttpSession session) {
		return studentService.findAll(uid, session);
	}
	
	@RequestMapping(value="/preLoadClassInfo/{uid}", method= {RequestMethod.GET})
	public String preLoadClassInfo(@PathVariable(value="uid") Integer uid, HttpSession session) {
		return studentService.preLoadClassInfo(uid, session);
	}
	
	@RequestMapping(value="/preLoadStuInfo/{sid}", method= {RequestMethod.GET})
	@ResponseBody
	public Student preLoadStuInfo(@PathVariable(value="sid") Integer sid) {
		System.out.println(sid);
		return studentService.preLoadStuInfo(sid);
	}
	
	@RequestMapping(value="createStudent", method= {RequestMethod.POST})
	@ResponseBody
	public String createStudent(@RequestBody Student s) {
		System.out.println(s);
		return studentService.createStudents(s);
	}
	
	@RequestMapping(value="deleteStudents", method= {RequestMethod.POST})
	@ResponseBody
	public String deleteStudents(@RequestBody String ids) {
		System.out.println(ids);
		return studentService.deleteStudents(ids.replace("\"", ""));
	}
	
	@RequestMapping(value="updateStudent", method= {RequestMethod.POST})
	@ResponseBody
	public String updateStudent(@RequestBody Student s) {
		System.out.println(s);
		return studentService.updateStudent(s);
	}
	
	@RequestMapping(value="findStudent", method= {RequestMethod.POST})
	@ResponseBody
	public String findStudent(@RequestBody Student s) {
		System.out.println(s);
		return studentService.findStudent(s);
	}
	
}
