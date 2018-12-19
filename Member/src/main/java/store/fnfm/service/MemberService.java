package store.fnfm.service;

import store.fnfm.vo.MemberVO;

public interface MemberService {
	public boolean modify(MemberVO member);
	public boolean remove(MemberVO member);
	public MemberVO get(String user_id);
}
