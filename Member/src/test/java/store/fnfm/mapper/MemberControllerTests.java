package store.fnfm.mapper;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class MemberControllerTests {
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test 
	public void testGet() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/get")
				.param("user_id","aaa"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	@Test @Ignore
	public void testModify() throws Exception{
		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/member/modify")
				.param("user_id","aaa")
				.param("password", "1234")
				.param("user_name", "원석")
				.param("phone","01012341234")
				.param("question", "피츄")
				.param("answer","피카츄"))
				.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
	}
	@Test @Ignore
	public void testRemove() throws Exception{
		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/member/remove")
				.param("user_id","aaa")
				.param("status", "5"))
				.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
	}
}
