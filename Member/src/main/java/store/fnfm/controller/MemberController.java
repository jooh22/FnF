package store.fnfm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import store.fnfm.service.MemberService;
import store.fnfm.vo.MemberVO;

@Controller
@Log4j
@RequestMapping("/board/*")
public class MemberController {
	private MemberService service;
	
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		log.info("modify:"+member);
		if(service.modify(member)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/board/modify";
	}
}
