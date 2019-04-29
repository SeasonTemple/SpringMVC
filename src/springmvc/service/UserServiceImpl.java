package springmvc.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import springmvc.dao.UserDao;
import springmvc.entity.User;

@Service("loginService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public User login(User u, HttpSession session) {
		User bu = new User();
		System.out.println("[indexServiceImpl]");
		if(!u.getCode().equalsIgnoreCase(session.getAttribute("code").toString())) {
			bu.setMsg("验证码错误!");
			System.out.println(session.getAttribute("code").toString());
			return bu;
		}
		bu = userDao.checkUser(u);
		if(bu.getUname()!= null) {
			bu.setMsg("success");
			session.setAttribute("loguser", bu);
			return bu;
		}else {
			bu.setMsg("用户名或密码错误!");
			return bu;
		}
	}

	@Override
	public String register(User u, Model model, HttpSession session, String code) {
		if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
			model.addAttribute("msg", "验证码错误！");
			System.out.println("input:"+session.getAttribute("code")+"\n"+code);
			return "redirect:Login";
		}
		int i = userDao.register(u);
		if(i > 0) {
			session.setAttribute("msg", "注册成功");
			return "redirect:Login";
		}
		else {
			return "Login";
		}
		
	}

}
