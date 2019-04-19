package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.UserDao;
import springmvc.entity.User;

@Service("loginService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao ud;
	@Override
	public User checkUser(User u) {
		return ud.checkUser(u);
	}
	@Override
	public int register(User u) {
		// TODO 自动生成的方法存根
		return 0;
	}

}
