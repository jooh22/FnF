package com.fnf.controller;

import java.sql.SQLException;
import java.util.Vector;

import com.fnf.model.ProductDAO;
import com.fnf.model.ProductVO;


public class SelectController {
	//상품리스트 SELECT ALL 
	public Vector<ProductVO> selectAll(int currentPage, int pageSize){
		Vector<ProductVO> vector = null;
		try {
			vector = ProductDAO.selectAll(currentPage, pageSize);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return vector;
	}
	//상품리스트 PageCount
	public int getPageCount(int pageSize) {
		int pageCount = 0;
		try {
			pageCount = ProductDAO.getPageCount(pageSize);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return pageCount;
	}
	//상품디테일 Select One
	public ProductVO select(int idx) {
		ProductVO product  = null;
		try {
			product = ProductDAO.select(idx);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return product;
	}
}
