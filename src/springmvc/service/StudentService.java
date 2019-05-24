package springmvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import springmvc.entity.Student;

public interface StudentService {

	public List<Student> findAll(String uid, HttpSession session);
}
