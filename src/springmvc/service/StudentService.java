package springmvc.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import springmvc.entity.Student;

public interface StudentService {

	public String updateStudent(Student s);
	
	public Student preLoadStuInfo(Integer sid);
	
	public String findAll(Integer uid, HttpSession session);
	
	public String preLoadClassInfo(Integer uid, HttpSession session);
	
	public String createStudents(Student s);
	
	public String deleteStudents(String ids);

	public String findStudent(Student s);
	
	public String pageList(Integer pageNo, Model model, HttpServletRequest request);
	
}
