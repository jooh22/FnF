package store.fnfm.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import store.fnfm.dao.QaaDAO;
import store.fnfm.vo.QaaVO;

@Service("qaaService")
public class QaaServiceImpl implements QaaService {
	@Autowired
	QaaDAO qaaDao;
	
	@Override
	public void insertBoard(QaaVO qaaVo) {
		System.out.println(qaaVo);
		this.qaaDao.create(qaaVo);
	}
	
	@Override
	public void select(Map map) {
		this.qaaDao.readAll(map);
	}

	@Override
	public void getTotalCount(Map map) {
		this.qaaDao.getTotalCount(map);
	}
	
	@Override
	public void selectBoard(Map map) {
		this.qaaDao.read(map);
	}

	@Override
	public void updateBoard(QaaVO qaaVo) {
		this.qaaDao.update(qaaVo);
	}

	@Override
	public void deleteBoard(int idx) {
		this.qaaDao.delete(idx);
	}

	/*@Override
	public void answerBoard(QaaVO qaaVo) {
		this.qaaDao.answer(qaaVo);
	}

	*/

}
