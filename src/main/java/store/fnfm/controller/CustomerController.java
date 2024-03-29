package store.fnfm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import store.fnfm.service.CustomerService;
import store.fnfm.vo.CustomerVO;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;

	/*customersignup*/
    @RequestMapping(value="/customersignup", method=RequestMethod.GET)
    public String customersignup(CustomerVO customerVo) {        
        return "signup/customersignup";
    }
    
  	/*유저db정보입력*/
    @RequestMapping(value="customersignup/", method=RequestMethod.POST)
	@ResponseBody
	public Map create(@RequestBody CustomerVO customerVo, RedirectAttributes redirectAttributes) { //유저가 나에게 보낸 json을 자바로 바꿔야함
    	this.customerService.insertCustomer(customerVo);
    	this.customerService.insertCustomer1(customerVo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", "success");
		return map;
	}
    
    /*아이디 중복 체크*/  
    
    @RequestMapping(value="idCheck", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> idCheck(@RequestBody CustomerVO customerVo) throws Exception {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = customerService.idCheck(customerVo.getUser_id());
       // System.out.println("count = " + count);
        map.put("cnt", count);
        
        return map;
    }
    
    /*email 중복 체크*/  
    
    @RequestMapping(value="emailCheck", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> emailCheck(@RequestBody CustomerVO customerVo) throws Exception {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = customerService.emailCheck(customerVo.getEmail());
        System.out.println("count = " + count);
        map.put("cnt", count);
        
        return map;
    }

    
    /*sellersignup*/
    @RequestMapping(value="/sellersignup", method=RequestMethod.GET)
    public String sellersignup(CustomerVO customerVo) {        
        return "signup/sellersignup";
    }
    
    /*판매자db정보입력*/
    @RequestMapping(value="sellersignup/", method=RequestMethod.POST)
	@ResponseBody
	public Map sellercreate(@RequestBody CustomerVO customerVo, RedirectAttributes redirectAttributes) { //유저가 나에게 보낸 json을 자바로 바꿔야함
    	System.out.println(customerVo);
    	this.customerService.insertSeller(customerVo);
    	this.customerService.insertSeller1(customerVo);
    	this.customerService.insertSeller2(customerVo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", "success");
		return map;
	}
    
    /*아이디 중복 체크*/  
    @RequestMapping(value="seidCheck", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> seidCheck(@RequestBody CustomerVO customerVo) throws Exception {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = customerService.idCheck(customerVo.getUser_id());
        System.out.println("count = " + count);
        map.put("cnt", count);
        
        return map;
    }
    
    /*약관동의창 띄우기*/
    @RequestMapping(value="/terms", method=RequestMethod.GET)
    public String terms(CustomerVO customerVo) {        
        return "signup/usingterm";
    }
    
    @RequestMapping(value="/terms1", method=RequestMethod.GET)
    public String terms1(CustomerVO customerVo) {        
        return "signup/personalterm";
    }
}
