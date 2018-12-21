package store.fnfm.mapper;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void test() {
		try(Connection con = DriverManager.getConnection("jdbc:log4jdbc:oracle:thin:@182.214.125.90:15210:ORCL", "farm", "dlfwhelqldlqslek")){
			log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}

}
