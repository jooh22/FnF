package store.fnfm.dao;

import java.util.Map;

public interface BoardDao {
	void readAll(Map map);
	void getTotalCount(Map map);
	void delete(int idx);
}
