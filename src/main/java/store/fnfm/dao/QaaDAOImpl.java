package store.fnfm.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import store.fnfm.vo.QaaVO;

@Repository("qaaDao")
public class QaaDAOImpl implements QaaDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void create(QaaVO qaaVo) {
		this.sqlSession.insert("Qaa.insertSP", qaaVo);
	}
	
	@Override
	public void readAll(Map map) {
		this.sqlSession.selectList("Qaa.selectAllSP", map);
	}
	
	@Override
	public void getTotalCount(Map map) {
		this.sqlSession.selectOne("Qaa.selectTotalCountSP", map);
	}
	
	@Override
	public void read(Map map) {
		this.sqlSession.selectOne("Qaa.selectOneSP", map);
	}

	@Override
	public void update(QaaVO qaaVo) {
		this.sqlSession.update("Qaa.updateSP", qaaVo);
	}

	@Override
	public void delete(int idx) {
		this.sqlSession.delete("Qaa.deleteSP", idx);
	}

	/*@Override
	public void answer(QaaVO qaaVo) {
		this.answer_update(board.getGrp(), board.getStep());
		this.sqlSession.insert("Qaa.answerInsertSP", qaaVo);
	}

	private void answer_update(int grp, int step) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("grp", grp);
		map.put("step", step);
		this.sqlSession.update("Qaa.answerUpdateSP", map);
	}
	
	*/


}
