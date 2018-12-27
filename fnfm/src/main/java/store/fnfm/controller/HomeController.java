package store.fnfm.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import store.fnfm.service.ProductService;


@Controller
public class HomeController {

	@Inject
	ProductService productService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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
	
	/*@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test(ModelAndView mav) {
		mav.addObject("list", productService.productlist());
		return mav;
	}*/
	
	/*@RequestMapping(value = "/" )
	public ModelAndView list(ModelAndView mav) {
		//mav.setViewName("redirect: index");
		mav.addObject("list", productService.productlist());
		return mav;
	}*/

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		return "login";
	}

}
