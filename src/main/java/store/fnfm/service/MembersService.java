package store.fnfm.service;

import java.util.List;

import store.fnfm.vo.MembersVO;

public interface MembersService {
	public boolean modifys(MembersVO member);
	public boolean remove(MembersVO member);
	public MembersVO get(String user_id);
	public List<MembersVO> getList();
}
