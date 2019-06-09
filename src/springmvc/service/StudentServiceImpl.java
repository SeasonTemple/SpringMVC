package springmvc.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import springmvc.dao.StudentDao;
import springmvc.dao.User_ClassesDao;
import springmvc.entity.Classes;
import springmvc.entity.Student;
import static springmvc.util.SpringMvcConstants.PAGE_DEFAULT_SIZE;
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
		session.setAttribute("uid", uid);
		System.out.println("Now uid is: "+uid);
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
		return "redirect:/pageList";
	}

	@Override
	public String createStudents(Student s) {
		int rows = studentDao.createStudents(s);
		if(rows > 0 ) {
			return "ok";
		}else {
			return "error";
		}
	}

	@Override
	public String deleteStudents(String ids) {
		List<String> ls = new ArrayList<>();
		for (String id: ids.split(",")){
            System.out.println(id);
            ls.add(id);
        }
		System.out.println(ls);
		int rows = studentDao.deleteStudents(ls);
		if(rows > 0) {
			return "ok";
		}else {
			return "error";
		}
	}

	@Override
	public Student preLoadStuInfo(Integer sid) {
		Student s = studentDao.findStudent(sid);
		return s;
	}

	@Override
	public String updateStudent(Student s) {
		System.out.println("StudentServiceImpl");
		int rows = studentDao.updateStudents(s);
		if(rows > 0) {
			return "ok";
		}else {
			return "error";
		}
	}

	@Override
	public String findStudent(Student s) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public String pageList(Integer pageNo, Model model, HttpServletRequest request) {
		Integer uid = (Integer) request.getSession().getAttribute("uid");
		PageHelper.startPage(pageNo, PAGE_DEFAULT_SIZE);
		List<Student> ls = studentDao.findAll(uid);
		PageInfo<Student> pageInfo=new PageInfo<Student>(ls);
		model.addAttribute("pageInfo", pageInfo);
		System.out.println(pageInfo);
		return "Stu";
	}
}
