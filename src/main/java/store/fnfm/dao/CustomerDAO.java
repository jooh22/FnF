package store.fnfm.dao;

import java.util.Map;

import store.fnfm.vo.CustomerVO;

public interface CustomerDAO {
	void create(CustomerVO customerVo);
	
	void create1(CustomerVO customerVo);
	
	public int idCheck(String user_id) throws Exception;
	
	public int emailCheck(String email) throws Exception;
	
	void sellercreate(CustomerVO customerVo);
	
	void sellercreate1(CustomerVO customerVo);
	
	void sellercreate2(CustomerVO customerVo);
	
	public int seidCheck(String user_id) throws Exception;
}
