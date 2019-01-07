package store.fnfm.service;

import java.util.Map;

public interface BoardService {
	void select(Map map);
	void getTotalCount(Map map);
	void deleteBoard(int idx);
}
