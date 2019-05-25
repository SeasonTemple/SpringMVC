package springmvc.service;

import javax.servlet.http.HttpSession;

public interface StudentService {

	public String findAll(Integer uid, HttpSession session);
}
