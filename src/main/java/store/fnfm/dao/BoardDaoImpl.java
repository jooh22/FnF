package store.fnfm.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void readAll(Map map) {
		this.sqlSession.selectList("Board.selectAllSP",map);
	}

	@Override
	public void getTotalCount(Map map) {
		this.sqlSession.selectOne("Board.selectTotalCountSP",map);
	}

	@Override
	public void delete(int idx) {
		this.sqlSession.delete("Board.deleteSP",idx);
	}

}
