package springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static springmvc.util.SpringMvcConstants.PAGE_DEFAULT_SIZE;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import springmvc.entity.Student;
import springmvc.service.IndexService;
import springmvc.service.StudentService;

@Controller
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="toLog", method= {RequestMethod.GET})
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}
	
	@RequestMapping(value="logSuccess", method= {RequestMethod.GET})
	public String logSuccess(Model model) {
		return indexService.toIndex(model);
	}
	
	@RequestMapping(value="Home", method={RequestMethod.GET})
	public String getHome(Model model) {
		return indexService.home(model);
	}
	
	@RequestMapping(value="Stu", method={RequestMethod.GET})
	public String getStudent(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.student(uid, m);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/list",method=RequestMethod.GET)
    public String pageList(ModelMap map,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo, HttpSession session, HttpServletRequest request){
        PageHelper.startPage(pageNo, PAGE_DEFAULT_SIZE);
        List<Student> ls = (List<Student>) request.getSession().getAttribute("Students");
        System.out.println(ls);
        PageInfo<Student> pageInfo=new PageInfo<Student>(ls);
        map.addAttribute("pageInfo", pageInfo);
        System.out.println(pageInfo);
        return "Stu";
    }
}
