package com.example.demo.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.demo.dao.ItemDao;
import com.example.demo.domain.Item;
import com.example.demo.domain.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 商品服务类
 * @author jiangzy
 *
 */
@Service
public class ItemService {
	@Autowired
	ItemDao itemDao = new ItemRepository();
	//获取首页商品信息
	public List<Map<String, Object>> home_item(){
		return itemDao.home_item();
	}
	//获取登录者商品信息
	public List<Map<String, Object>> my_item(HttpSession httpSession){
		return itemDao.my_item(httpSession);
	}
	// 获取需要修改的商品信息
	public List<Map<String, Object>> current_goods(int item_id){
		return itemDao.current_goods(item_id);
	}
	//编辑商品信息
	public boolean edit_goods(Item item, HttpSession httpSession){
		return itemDao.edit_goods(item,httpSession);
	}
}
