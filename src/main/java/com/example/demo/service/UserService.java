package com.example.demo.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.demo.dao.UserDao;
import com.example.demo.domain.User;
import com.example.demo.domain.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 用户服务类
 * @author jiangzy
 *
 */
@Service
public class UserService {
	@Autowired
	UserDao userDao = new UserRepository();
	
	//获取头部信息
	public List<Map<String, Object>> header(HttpSession httpSession){
		return userDao.header(httpSession);
	}
	//校样用户名是否存在
	public boolean proof(User user){
		return userDao.proof(user);
	}
	//用户登录
	public boolean login(User user,HttpSession httpSession){
		return userDao.login(user,httpSession);
	}
	
}
