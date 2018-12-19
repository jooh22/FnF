package store.fnfm.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import store.fnfm.service.MemberService;
import store.fnfm.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberServiceTests {
	
	@Setter(onMethod_ = {@Autowired })
	private MemberService service;
	
	@Test @Ignore
	public void testdelete() {
		MemberVO member = service.get("aaa");
		if(member == null) {
			return ;
		}
		member.setStatus(1);
		log.info("remove"+service.remove(member));
	}
	@Test
	public void testupdate() {
		MemberVO member = service.get("aaa");
		if(member == null) {
			return ;
		}
		member.setEmail("ccc@ddd.com");
		log.info("update"+service.modify(member));
	}

}
