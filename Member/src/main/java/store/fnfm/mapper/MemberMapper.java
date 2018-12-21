package store.fnfm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import store.fnfm.vo.MemberVO;

public interface MemberMapper {
	@Select("select * from customer ")
	public List<MemberVO> getList();
	
	public int delete(MemberVO member);
	
	public void insert(MemberVO member);
	
	public void insertSelectKey(MemberVO member);
	
	public int update(MemberVO member);
	
	public MemberVO read(String user_id);
}
