package springmvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.fasterxml.jackson.annotation.JsonAlias;

import springmvc.dao.UserDao;
import springmvc.entity.BfUser;
import springmvc.entity.User;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public String toLogin(Model model) {
		model.addAttribute("user", new User());
		return "Login";
	}

	@Override
	public String beforeSubmit(BfUser u, HttpSession session) {
		if(!u.getCode().equalsIgnoreCase(session.getAttribute("code").toString())) {
			return JSON.
		}
		BfUser bu = null;
		List<BfUser> bl = userDao.cbfUser(u);
		if(bl.size() > 0) {
			bu = bl.get(0);
		}
		if(bu!= null) {
			return bu;
		}else {
			bu.setMsg("用户名或密码错误！");
			return bu;
		}
	}
	
}
