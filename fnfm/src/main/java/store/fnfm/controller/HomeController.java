package store.fnfm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import store.fnfm.service.ProductService;
import store.fnfm.service.SearchAllService;
import store.fnfm.vo.ProductVO;

@Controller
public class HomeController {

	@Inject
	ProductService productService;

	@Inject
	SearchAllService searchAllService;
	 

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 메인 화면 상품
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main(ModelAndView mav) {
		mav.addObject("nlist", productService.nList());
		mav.addObject("slist", productService.sList());
		mav.addObject("glist", productService.gList());
		mav.addObject("mdlist", productService.mdList());
		mav.addObject("hlist", productService.hList());
		mav.setViewName("index");
		return mav;
	}

	// 로그인 화면
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}

	@RequestMapping(value = "search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam String keyword) throws Exception{
		List<ProductVO> list = searchAllService.searchAll(keyword);
		int count = searchAllService.searchAllCount(keyword);
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.setViewName("search");
		return mav;
	}
	
	/*
	 * @RequestMapping(value = "loginCheck") public ModelAndView
	 * logincheck(@ModelAttribute MemberVO vo, HttpSession session) { boolean result
	 * = memberService.loginCheck(vo, session); }
	 */
}
