package springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface IndexService {
	public String toLogin(Model model);
	public String toIndex(Model model);
	public String home(Model model);
	public String student(int uid, HttpSession session);
}
