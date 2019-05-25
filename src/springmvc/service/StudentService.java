package springmvc.service;

import javax.servlet.http.HttpSession;

public interface StudentService {

	public String findAll(int uid, HttpSession session);
}
