package springmvc.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import springmvc.entity.User;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {
	
	@Override
	public String toLogin(Model model) {
		model.addAttribute("user", new User());
		return "Login";
	}

	@Override
	public String toIndex(Model model) {
		return "Index";
	}

	@Override
	public String home(Model model) {
		return "Home";
	}

	@Override
	public String student(Integer uid, Model m) {
		m.addAttribute("uid", uid);
		return "redirect:/findAll/{uid}";
	}

}
