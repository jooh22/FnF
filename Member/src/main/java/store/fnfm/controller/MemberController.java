package store.fnfm.controller;

import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
=======
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
import lombok.extern.log4j.Log4j;
import store.fnfm.service.MemberService;
import store.fnfm.vo.MemberVO;

@Controller
@Log4j
<<<<<<< HEAD
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	private MemberService service;
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("user_id") String user_id,Model model) {
		log.info("/get or /modify");
		model.addAttribute("member",service.get(user_id));
	}
	
=======
@RequestMapping("/board/*")
public class MemberController {
	private MemberService service;
	
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		log.info("modify:"+member);
		if(service.modify(member)) {
			rttr.addFlashAttribute("result","success");
		}
<<<<<<< HEAD
		return "redirect:/member/list";
	}
	@PostMapping("/remove")
	public String remove(MemberVO member, RedirectAttributes rttr) {
		log.info("remove:"+member);
		if(service.remove(member)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/member/list";
	}
	@GetMapping("/list")
	public void register() {
		
=======
		return "redirect:/board/modify";
>>>>>>> c125578ac12fcda764209ed76f423feedb11954b
	}
}
