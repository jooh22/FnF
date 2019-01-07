package store.fnfm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import store.fnfm.service.MembersService;
import store.fnfm.service.OrdersService;
import store.fnfm.vo.MembersVO;

@Controller
public class MembersController {
	@Autowired
	private MembersService service;
	@Autowired
	private OrdersService oservice;
	@Autowired
    private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@GetMapping({"/get","/modifys","/remove"})
	public void get(@RequestParam("user_id") String user_id,Model model) {
		model.addAttribute("member",service.get(user_id));
	}
	
	@PostMapping("/modifys")
	public String modify(MembersVO member, RedirectAttributes rttr) {
		member.setPassword(this.bcryptPasswordEncoder.encode(member.getPassword()));
		if(service.modifys(member)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/myorder";
	}
	@PostMapping("/remove")
	public String remove(MembersVO member, RedirectAttributes rttr) {
		if(service.remove(member)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/myorder";
	}
	@GetMapping("/myorder")
	public void list(@RequestParam("user_id") String user_id,Model model) {
		model.addAttribute("order",oservice.selectList(user_id));
		model.addAttribute("modifyorder",oservice.modifyorder(user_id));
	}
	@GetMapping("/list")
	public void register() {
		
	}
}
