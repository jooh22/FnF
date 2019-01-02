package store.fnfm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import store.fnfm.vo.ProductVO;

public class SearchAllDAOImpl implements SearchAllDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductVO> searchAll(String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		return sqlSession.selectList("search.searchAll", map);
	}

	@Override
	public int searchAllCount(String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		return sqlSession.selectOne("search.searchAllCount", map);
	}

}
