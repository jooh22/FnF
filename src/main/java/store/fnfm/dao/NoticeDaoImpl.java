package store.fnfm.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import store.fnfm.vo.FaqVO;
import store.fnfm.vo.NoticeVO;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void create(NoticeVO noticeVo) {
		this.sqlSession.insert("Notice.insertSP", noticeVo);
	}

	@Override
	public void readAll(Map map) {
		this.sqlSession.selectList("Notice.selectAllSP", map);
	}

	@Override
	public void getTotalCount(Map map) {
		this.sqlSession.selectOne("Notice.selectTotalCountSP", map);
	}

	@Override
	public void read(Map map) {
		this.sqlSession.selectOne("Notice.selectOneSP", map);
	}

	@Override
	public void update(NoticeVO noticeVo) {
		this.sqlSession.update("Notice.updateSP", noticeVo);
	}

	@Override
	public void delete(int idx) {
		this.sqlSession.delete("Notice.deleteSP", idx);
	}

	
}
