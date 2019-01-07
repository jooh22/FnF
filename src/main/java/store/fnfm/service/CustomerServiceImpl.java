package store.fnfm.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import store.fnfm.dao.CustomerDAO;
import store.fnfm.vo.CustomerVO;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerDAO customerDao;
	
	@Autowired
    private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Override
	public void insertCustomer(CustomerVO customerVo) {
		customerVo.setPassword(this.bcryptPasswordEncoder.encode(customerVo.getPassword()));
		this.customerDao.create(customerVo);
	}
	
	@Override
	public void insertCustomer1(CustomerVO customerVo) {
		this.customerDao.create1(customerVo);
	}

	@Override
	public int idCheck(String user_id) throws Exception {
		return customerDao.idCheck(user_id);
	}
	

	@Override
	public int emailCheck(String email) throws Exception {
		return customerDao.emailCheck(email);
	}

	@Override
	public void insertSeller(CustomerVO customerVo) {
		System.out.println(customerVo);
		customerVo.setPassword(this.bcryptPasswordEncoder.encode(customerVo.getPassword()));
		this.customerDao.sellercreate(customerVo);
	}

	@Override
	public void insertSeller1(CustomerVO customerVo) {
		this.customerDao.sellercreate1(customerVo);
	}
	
	@Override
	public void insertSeller2(CustomerVO customerVo) {
		this.customerDao.sellercreate2(customerVo);
	}

	@Override
	public int seidCheck(String user_id) throws Exception {
		return customerDao.idCheck(user_id);
	}

	

}
