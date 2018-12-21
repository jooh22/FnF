package store.fnfm.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import store.fnfm.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Test @Ignore
	public void testInsert() {
		MemberVO member = new MemberVO();
		member.setUser_id("aaa");
		member.setEmail("aaa@bbb.com");
		member.setPassword("1234");
		member.setUser_name("최원석");
<<<<<<< HEAD
		member.setPhone("010-1234-1234");
		member.setBirth("19930101");
		member.setQuestion("피카츄");
		member.setAnswer("라이츄");
		member.setStatus(3);
=======
		member.setPhone("01012341234");
		member.setBirth("19930101");
		member.setQuestion("피카츄");
		member.setAnswer("라이츄");
		member.setStatus(1);
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
		mapper.insert(member);
		log.info(member);
	}
	
	@Test @Ignore
	public void test() {
		mapper.getList().forEach(board -> log.info(board));
	}
	@Test @Ignore
	public void test1() {
		MemberVO member = new MemberVO();
		member.setUser_id("aaa");
		member.setStatus(5);
		int count = mapper.delete(member);
		log.info("DELETE COUNT:" + count);
		test();
	}
<<<<<<< HEAD
	@Test 
=======
	@Test @Ignore
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
	public void testupdate() {
		MemberVO member = new MemberVO();
		member.setEmail("bbb@ccc.com");
		member.setPassword("3456");
		member.setUser_name("최원석");
<<<<<<< HEAD
		member.setPhone("010-2345-6789");
=======
		member.setPhone("01023456789");
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
		member.setQuestion("피카츄");
		member.setAnswer("라이츄");
		member.setUser_id("aaa");
		int count = mapper.update(member);
		log.info("UPDATE COUNT:" + count);
		test();
	}
<<<<<<< HEAD
	@Test @Ignore
=======
	@Test
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
	public void testread() {
		MemberVO member = mapper.read("aaa");
		log.info(member);
	}

<<<<<<< HEAD

=======
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
}
