package store.fnfm.vo;

import lombok.Data;

@Data
public class MemberVO {
	private String user_id;
	private String email;
	private String password;
	private String user_name;
	private String phone;
	private String birth;
	private String question;
	private String answer;
	private int status;
}
