package store.fnfm.dao;

import java.util.Map;

import store.fnfm.vo.FaqVO;
import store.fnfm.vo.QaaVO;


public interface FaqDAO {
	void create(FaqVO faqVo);
	void readAll(Map map);
	void getTotalCount(Map map);
	void read(Map map);
	void update(FaqVO faqVo);
	void delete(int idx);
}
