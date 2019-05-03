package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import springmvc.dao.UserDao;
import springmvc.entity.User;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {
	
	@Override
	public String toLogin(Model model) {
		model.addAttribute("user", new User());
		return "Login";
	}

/*	@Override
	public BfUser logValidate(BfUser u, HttpSession session) {
		BfUser bu = new BfUser();
		System.out.println("[indexServiceImpl]");
		if(!u.getCode().equalsIgnoreCase(session.getAttribute("code").toString())) {
			bu.setMsg("验证码错误!");
			System.out.println(session.getAttribute("code").toString());
			return bu;
		}
		List<BfUser> bl = userDao.cbfUser(u);
		if(bl.size() > 0) {
			bu = bl.get(0);
		}
		if(bu.getUname()!= null) {
			bu.setMsg("success");
			session.setAttribute("loguser", bu);
			return bu;
		}else {
			bu.setMsg("用户名或密码错误!");
			return bu;
		}
	}*/
	
}
