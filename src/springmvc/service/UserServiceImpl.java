package springmvc.service;

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
	public String checkUser(User u, Model model, HttpSession session, String code) {
		if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
			model.addAttribute("codeError", "验证码错误！");
			return "Login";
		}
		User nu = null;
		List<User> ul = userDao.checkUser(u);
		if(ul.size() > 0) {
			nu = ul.get(0);
		}
		if(nu!= null) {
			session.setAttribute("loguser", nu);
			return "start";
		}else {
			model.addAttribute("msg", "用户名或密码错误！");
			return "Login";
		}
	}

	@Override
	public String register(User u, Model model, HttpSession session, String code) {
		// TODO 自动生成的方法存根
		return null;
	}

}
