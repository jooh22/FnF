package store.fnfm.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		List<String> roleNames = new ArrayList<>();

		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		
		if(roleNames.contains("ROLE_ADMIN")) { //어드민 권한을 가졌다면 관리자 페이지로 리다이렉
			response.sendRedirect("/");
			return;
		}
		
		if(roleNames.contains("ROLE_USER")) {
			response.sendRedirect("/");
			return;
		}
		
		if(roleNames.contains("ROLE_SELLER")) {
			response.sendRedirect("/");
			return;
		}
		/*response.sendRedirect("/");*/
	}
}
