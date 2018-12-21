package store.fnfm.service;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
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
<<<<<<< HEAD
	@Override
	public List<MemberVO> getList(){
		log.info("getList........");
		return mapper.getList();
	}
=======
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
}
