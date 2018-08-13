package com.example.demo.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.demo.dao.StoreDao;
import com.example.demo.domain.StoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



/**
 * 店铺服务类
 * @author jiangzy
 *
 */
@Service
public class StoreService {
	@Autowired
	StoreDao storeDao = new StoreRepository();
	//获取登录者店铺信息
	public List<Map<String, Object>> my_store(HttpSession httpSession){
		return storeDao.my_store(httpSession);
	}
}
