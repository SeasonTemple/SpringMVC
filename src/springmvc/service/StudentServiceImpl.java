package springmvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.StudentDao;
import springmvc.entity.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	private static Logger logger = LogManager.getLogger(StudentServiceImpl.class);
	
	@Autowired
	private StudentDao studentDao;
	
	@Override
	public String findAll(Integer uid, HttpSession session) {
		List<Student> ls = studentDao.findAll(uid);
		session.setAttribute("Students", ls);
		System.out.println(uid+"//"+ls);
		return "Stu";
	}

}
