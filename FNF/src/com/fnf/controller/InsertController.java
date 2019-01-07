package com.fnf.controller;

import java.sql.SQLException;

import com.fnf.model.ProductDAO;
import com.fnf.model.ProductVO;

public class InsertController {
	//새 글 입력
	public int insert(ProductVO product) {
		int row = 0;//넘어 올 row 초기값
		try {
			row = ProductDAO.insert(product);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return row;
	}
}
