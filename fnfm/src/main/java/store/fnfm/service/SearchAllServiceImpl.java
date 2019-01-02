package store.fnfm.service;

import java.util.List;

import javax.inject.Inject;

import store.fnfm.dao.SearchAllDAO;
import store.fnfm.vo.ProductVO;

public class SearchAllServiceImpl implements SearchAllService {

	@Inject
	SearchAllDAO searchAllDao;
	
	@Override
	public List<ProductVO> searchAll(String keyword) throws Exception {
		return searchAllDao.searchAll(keyword);
	}

	@Override
	public int searchAllCount(String keyword) throws Exception {
		return searchAllDao.searchAllCount(keyword);
	}

}
