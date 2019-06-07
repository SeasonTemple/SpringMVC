package springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import springmvc.dao.StudentDao;
import springmvc.entity.Student;
import springmvc.service.IndexService;

@Controller
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	
	@Autowired
	private StudentDao studentDao;
	
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
	
	@RequestMapping(value="Cls", method={RequestMethod.GET})
	public String getClas(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.clas(uid, m);
	}
	
	@RequestMapping(value="Detl", method={RequestMethod.GET})
	public String getDetail(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.detail(uid, m);
	}
	
	@RequestMapping(value="Not", method={RequestMethod.GET})
	public String getNotice(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.notice(uid, m);
	}
	
	@RequestMapping(value="Upf", method={RequestMethod.GET})
	public String getUploadFile(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.uploadFile(uid, m);
	}
	
	@RequestMapping(value="Dlf", method={RequestMethod.GET})
	public String getDownloadFile(Integer uid, Model m) {
		System.out.println(uid);
		return indexService.downloadFile(uid, m);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/list",method=RequestMethod.GET)
    public String pageList(Model model,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo, HttpSession session, HttpServletRequest request){
        PageHelper.startPage(pageNo, 5);
        List<Student> ls = (List<Student>) request.getSession().getAttribute("Students");
        PageInfo<Student> pageInfo=new PageInfo<Student>(ls);
        model.addAttribute("pageInfo", pageInfo);
        System.out.println(pageInfo);
        return "Stu";
    }
}
