package store.fnfm.dao;

import java.util.List;

import store.fnfm.vo.InquiryVO;

public interface InquiryDAO {
	List<InquiryVO> list(String pcode);
	void create(InquiryVO inquiryVO);
	void update(InquiryVO inquiryVO);
	void delete(int idx);
}
