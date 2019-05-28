package springmvc.service;

import javax.servlet.http.HttpSession;

import springmvc.entity.Student;

public interface StudentService {

	public String findAll(Integer uid, HttpSession session);
	
	public String preLoadClassInfo(Integer uid, HttpSession session);
	
	public String createStudents(Student s);
	
	public String deleteStudents(String ids, HttpSession session);
}
