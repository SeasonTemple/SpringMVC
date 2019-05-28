package springmvc.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.StudentDao;
import springmvc.dao.User_ClassesDao;
import springmvc.entity.Classes;
import springmvc.entity.Student;
import springmvc.entity.User_Classes;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {

	private static Logger logger = LogManager.getLogger(StudentServiceImpl.class);
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private User_ClassesDao ucDao;
	
	@Override
	public String findAll(Integer uid, HttpSession session) {
		List<Student> ls = studentDao.findAll(uid);
		session.setAttribute("Students", ls);
		session.setAttribute("uid", uid);
		System.out.println(uid+"//"+ls);
		return "redirect:/preLoadClassInfo/{uid}";
	}

	@Override
	public String preLoadClassInfo(Integer uid, HttpSession session) {
		System.out.println("preLoadClassInfo simpl");
		List<User_Classes> luc = ucDao.findAllByUid(uid);
		List<Classes> lc = new ArrayList<Classes>();
		luc.forEach(uc ->{
			lc.add(uc.getClas());
		});
		System.out.println(lc);
		session.setAttribute("classes", lc);
		/*for(User_Classes uc: luc) {
			lc.add(uc.getClas());
		}*/
		return "Stu";
	}

	@Override
	public int createStudents(Student s) {
		return studentDao.createStudents(s);
	}

}
