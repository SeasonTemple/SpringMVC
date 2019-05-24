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
	public List<Student> findAll(String uid, Model m) {
		List<Student> ls = studentDao.findAll(uid);
		return ls;
	}

}
