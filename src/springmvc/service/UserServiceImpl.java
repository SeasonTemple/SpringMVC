package springmvc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;

import springmvc.dao.UserDao;
import springmvc.entity.User;

@Service("loginService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public User login(User u, HttpSession session) {
		User bu = new User();
		System.out.println("[indexServiceImpl]");
		if(!u.getCode().equalsIgnoreCase(session.getAttribute("code").toString())) {
			bu.setMsg("��֤�����!");
			System.out.println(session.getAttribute("code").toString());
			return bu;
		}
		try {
			bu = userDao.checkUser(u);
			if(bu.getUname()!= null) {
				bu.setMsg("success");
				session.setAttribute("loguser", bu);
				return bu;
			}
			else {
				bu.setMsg("�û������������!");
			}
		} catch (NullPointerException e) {
			session.setAttribute("errormsg", "�û������벻��Ϊ��!");
			System.out.println("Error��User Ϊ��");
		}
		return bu;
	}

	@Override
	public User register(User u, BindingResult result, HttpSession session) {
		User bu = new User();
		Map<String, String> emap = new HashMap<>();
		if(result.hasErrors()) {
			result.getAllErrors().forEach(error->{
				if(error instanceof FieldError) {
					FieldError fe = (FieldError) error;
					emap.put(fe.getField(), fe.getDefaultMessage());
					System.out.println(fe.getField() + " " + fe.getDefaultMessage());
				}
			});
			session.setAttribute("errorMap", emap);
			bu.setMsg("��֤δͨ��!");
			return bu;
		}
		try {
			bu = userDao.checkUser(u);
			if(bu!= null) {
				bu.setMsg("���û�������,ע��ʧ��!");
				return bu;
			}else {
				int i = userDao.register(u);
				if(i > 0) {
					bu = u;
					bu.setMsg("ע��ɹ�!");
					session.setAttribute("loguser", bu);
				}
			}
		} catch (NullPointerException e) {
			session.setAttribute("errormsg", "��Ϣ����Ϊ��!");
			System.out.println("Error��User Ϊ��");
		}
		return bu;
	}
	
}
