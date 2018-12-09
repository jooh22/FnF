package com.fnf.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.fnf.model.DBClose;
import com.fnf.model.DBConnection;


public class ProductDAO {
	//새로운 상품등록 insert | productInsert
		public static int insert(ProductVO product) throws SQLException{
			Connection conn = DBConnection.getConnection();
			String sql = "{ call product_insert(?,?,?,?,?,?,?,?,?,?,?,?) }";
			CallableStatement cstmt = conn.prepareCall(sql);
			cstmt.setString(1, product.getSellerid());
			cstmt.setString(2, product.getPcode());
			cstmt.setString(3, product.getPname());
			cstmt.setString(4, product.getPcontents());
			cstmt.setString(5, product.getOrigin());
			cstmt.setString(6, product.getUnit());
			cstmt.setString(7, product.getFilename());
			cstmt.setString(8, product.getCategory());
			cstmt.setInt(9, product.getStock());  
			cstmt.setInt(10, product.getPrice());  
			cstmt.setInt(11, product.getSell_num());  //0 default
			cstmt.setInt(12, product.getRecomm());  //0 default
			int row = cstmt.executeUpdate();
			if(cstmt != null) cstmt.close();
			DBClose.close(conn);
			return row;
		}
	//등록 상품 SelectALL | productList 
		public static Vector<ProductVO> selectAll(int currentPage, int pageSize) throws SQLException{
			Connection conn = DBConnection.getConnection();
			String sql = "{ call product_selectAll(?) }";
			CallableStatement cstmt = conn.prepareCall(sql);
			cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.executeUpdate();   //매우 중요
			ResultSet rs = (ResultSet)cstmt.getObject(1);
			Vector<ProductVO> vector = new Vector<ProductVO>(1,1);
			int start = (currentPage - 1) * pageSize;
			if(!rs.next() && start == 0) {   //현재 한 개의 글이라도 없다면
				vector = null;
			}else {
				for(int i = 0 ; i < start ; i++) rs.next();
				int count = 0;
				do {
					ProductVO product = new ProductVO();
					product.setIdx(rs.getInt("idx"));//rs는 db컬럼명
					product.setPcode(rs.getString("pcode"));
					product.setPname(rs.getString("pname"));
					product.setFilename(rs.getString("filename"));
					product.setCategory(rs.getString("category"));
					product.setPrice(rs.getInt("price"));
					product.setSell_num(rs.getInt("sell_num"));
					product.setWritedate(rs.getDate("writedate"));
					vector.addElement(product);//vector에 값 넣기
					count++;
				}while(rs.next() && count < pageSize);
			}
			if(rs != null) rs.close();
			if(cstmt != null) cstmt.close();
			DBClose.close(conn);
			return vector;
		}
	//등록상품리스트 PageCount
		public static int getPageCount(int pageSize) throws SQLException{
			Connection conn = DBConnection.getConnection();
			String sql = "SELECT COUNT(idx) FROM product";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			int count = rs.getInt(1);   //총 레코드 갯수
			int pageCount = (count % pageSize == 0) ? count / pageSize : count / pageSize + 1;
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			DBClose.close(conn);
			return pageCount;
		}
		//등록상품디테일 | ProductDetail
		public static ProductVO select(int idx) throws SQLException{
			Connection conn = DBConnection.getConnection();
			String sql = "{ call product_select(?, ?) }";
			CallableStatement cstmt = conn.prepareCall(sql);
			cstmt.setInt(1, idx);		//controller에서 넘어온 idx값
			cstmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.executeUpdate();   //매우 중요.
			ResultSet rs = (ResultSet)cstmt.getObject(2);
			rs.next();
			ProductVO product = new ProductVO();
			product.setPcode(rs.getString("pcode"));
			product.setPname(rs.getString("pname"));
			product.setPcontents(rs.getString("pcontents"));
			product.setOrigin(rs.getString("origin"));
			product.setUnit(rs.getString("unit"));
			product.setCategory(rs.getString("category"));
			product.setFilename(rs.getString("filename"));
			product.setPrice(rs.getInt("price"));//VO(set)값에 DB(rs값)을 저장시킨다.
			if(rs != null) rs.close();
			if(cstmt != null) cstmt.close();
			DBClose.close(conn);
			return product;
		}
}
