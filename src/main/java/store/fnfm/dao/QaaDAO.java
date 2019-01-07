package store.fnfm.dao;

import java.util.Map;

import store.fnfm.vo.QaaVO;

public interface QaaDAO {
	void create(QaaVO qaaVo);
	void readAll(Map map);
	void getTotalCount(Map map);
	void read(Map map);
	void update(QaaVO qaaVo);
	void delete(int idx);
	/*void answer(QaaVO qaaVo);*/
	
}
