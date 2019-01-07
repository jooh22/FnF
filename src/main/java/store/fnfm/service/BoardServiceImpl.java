package store.fnfm.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import store.fnfm.dao.BoardDao;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao boardDao;
	
	@Override
	public void select(Map map) {
		this.boardDao.readAll(map);
	}

	@Override
	public void getTotalCount(Map map) {
		this.boardDao.getTotalCount(map);
	}

	@Override
	public void deleteBoard(int idx) {
		this.boardDao.delete(idx);
	}

}
