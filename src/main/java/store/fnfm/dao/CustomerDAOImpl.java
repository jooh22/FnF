package store.fnfm.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import store.fnfm.vo.CustomerVO;


@Repository("customerDao")
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void create(CustomerVO customerVo) {  
		this.sqlSession.insert("Customer.insertSU", customerVo);
	}

	@Override
	public void create1(CustomerVO customerVo) {
		this.sqlSession.insert("Customer.insert1", customerVo);
	}
	
	@Override
	public int idCheck(String user_id) throws Exception {
		int count = sqlSession.selectOne("Customer.idCheck", user_id);
		//System.out.println(count);
		return count;
	}
	
	@Override
	public int emailCheck(String email) throws Exception {
		int count = sqlSession.selectOne("Customer.emailCheck", email);
		return count;
	}

	@Override
	public void sellercreate(CustomerVO customerVo) {
		this.sqlSession.insert("Seller.seinsertSU", customerVo);
		
	}

	@Override
	public void sellercreate1(CustomerVO customerVo) {
		this.sqlSession.insert("Seller.seinsert2", customerVo);
		
	}

	@Override
	public void sellercreate2(CustomerVO customerVo) {
		this.sqlSession.insert("Seller.seinsert3", customerVo);
	}
	
	@Override
	public int seidCheck(String user_id) throws Exception {
		int count = sqlSession.selectOne("Customer.idCheck", user_id);
		//System.out.println(count);
		return count;
	}

	

	
}
