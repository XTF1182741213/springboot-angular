package com.example.demo.dao;

import com.example.demo.domain.Item;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;



/**
 * 商品接口类
 * @author jiangzy
 *
 */
public interface ItemDao {
	//获取首页商品信息
	 List<Map<String, Object>> home_item();
	//获取首页商品信息
	 List<Map<String, Object>> my_item(HttpSession httpSession);
	// 获取需要修改的商品信息
	 List<Map<String, Object>> current_goods(int item_id);
	//编辑商品信息
	 boolean edit_goods(Item item, HttpSession httpSession);
}
