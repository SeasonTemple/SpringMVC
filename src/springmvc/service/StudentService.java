package springmvc.service;

import java.util.List;

import org.springframework.ui.Model;

import springmvc.entity.Student;

public interface StudentService {

	public List<Student> findAll(String uid, Model m);
}
