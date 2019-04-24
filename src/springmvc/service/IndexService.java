package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import springmvc.entity.BfUser;

public interface IndexService {
	public String toLogin(Model model);
	public BfUser beforeSubmit(BfUser u, HttpSession session);
}
