package springmvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.StudentDao;
import springmvc.entity.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public List<Student> findAll(String uid, HttpSession session) {
		List<Student> ls = studentDao.findAll(uid);
		session.setAttribute("Students", ls);
		System.out.println(uid+"//"+ls);
		return ls;
	}

}
