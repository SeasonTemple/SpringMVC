package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import springmvc.dao.StudentDao;
import springmvc.entity.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public List<Student> findAll(Model m, String uid) {
		List<Student> ls = studentDao.findAll(uid);
		m.addAttribute("Students", ls);
		System.out.println(uid+"//"+ls);
		return ls;
	}

}
