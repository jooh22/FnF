package store.fnfm.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import store.fnfm.mapper.MemberMapper;
import store.fnfm.vo.MemberVO;


@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	private MemberMapper mapper;
	
	@Override
	public boolean modify(MemberVO member) {
		log.info("modify....."+member);
		return mapper.update(member)==1;
	}

	@Override
	public boolean remove(MemberVO member) {
		log.info("remove....."+member);
		return mapper.delete(member)==1;
	}
	@Override
	public MemberVO get(String user_id) {
		log.info("get........."+ user_id);
		return mapper.read(user_id);
	}
}
