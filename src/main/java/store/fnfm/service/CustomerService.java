package store.fnfm.service;

import store.fnfm.vo.CustomerVO;

public interface CustomerService {
	void insertCustomer (CustomerVO customerVo);
	
	void insertCustomer1 (CustomerVO customerVo);
	
	public int idCheck(String user_id) throws Exception;
	
	public int emailCheck(String email) throws Exception;
	
	void insertSeller (CustomerVO customerVo);
	
	void insertSeller1 (CustomerVO customerVo);
	
	void insertSeller2 (CustomerVO customerVo);
	
	public int seidCheck(String user_id) throws Exception;
}
