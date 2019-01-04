package store.fnfm.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import store.fnfm.dao.ProductDAO;
import store.fnfm.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDao;
	
	@Override
	public List<ProductVO> nList() {
		return productDao.nList();
	}

	@Override
	public List<ProductVO> sList() {
		return productDao.sList();
	}

	@Override
	public List<ProductVO> gList() {
		return productDao.gList();
	}

	@Override
	public List<ProductVO> mdList() {
		return productDao.mdList();
	}

	@Override
	public List<ProductVO> hList() {
		return productDao.hList();
	}

}
