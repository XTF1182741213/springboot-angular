package com.example.demo.dao;

import com.example.demo.domain.User;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


/**
 * 用户接口类
 * 
 * @author jiangzy
 *
 */

public interface UserDao {
	// 获取头部信息
	public List<Map<String, Object>> header(HttpSession httpSession);

	// 校样用户名是否存在
	public boolean proof(User user);

	// 用户登录
	public boolean login(User user, HttpSession httpSession);

}
