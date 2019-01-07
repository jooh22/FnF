package store.fnfm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PathController {
	/*@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice() {
		return "notice";
	}*/
	@RequestMapping(value = "/cs", method = RequestMethod.GET)
	public String cs() {
		return "notice";
	}
	
	@RequestMapping(value = "/qaa", method = RequestMethod.GET)
	public String qaa() {
		return "qaa";
	}
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String fnq() {
		return "faq";
	}
	
	@RequestMapping(value = "/qaa/qaawrite", method = RequestMethod.GET)
	public String qaawrite() {
		return "qaawrite";
	}

	@RequestMapping(value = "/faq/faqwrite", method = RequestMethod.GET)
	public String faqwrite() {
		return "faqwrite";
	}
	
	@RequestMapping(value = "/cs/noticewrite", method = RequestMethod.GET)
	public String noticewrite() {
		return "noticewrite";
	}
	
}
