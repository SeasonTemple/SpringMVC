package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface IndexService {
	public String toLogin(Model model);
//	public BfUser logValidate(BfUser u, HttpSession session);
}
