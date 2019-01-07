package store.fnfm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import store.fnfm.service.SellerService;
import store.fnfm.vo.SellerVO;

@Controller
public class SellerController {
	@Autowired
	SellerService sellerService;
	
	@RequestMapping(value = "/admin/seller/{page}", method = RequestMethod.POST)
	@ResponseBody
	public Map list2(@PathVariable int page) {
		Map<String, Object> countMap = new HashMap<String, Object>();
		this.sellerService.getTotalCount(countMap);
		int totalCount = (Integer)countMap.get("result");
		int pageSize = 10;
		int totalPage = (totalCount % pageSize == 0) ? totalCount / pageSize : totalCount
				/ pageSize + 1;
		if(totalPage < page) page = totalPage;
		int pageCount = 10;
		
		int start = (page - 1) * pageCount + 1;
		int end = start + pageCount - 1 ;
		
		int startPage = ((page - 1) * pageCount / pageCount) + 1;
		int endPage = startPage + pageCount - 1 ; 
		
		if(endPage> totalPage) endPage = totalPage;
		
		Map<String, Object> results = new HashMap<String, Object>();
		results.put("start", start);
		results.put("end", end);
		
		this.sellerService.select(results);
		List<SellerVO> list = (List<SellerVO>)results.get("results");
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("code", Boolean.TRUE);
		map1.put("startPage", startPage);
		map1.put("endPage", endPage);
		map1.put("totalPage", totalPage);
		map1.put("pageSize", pageSize);
		map1.put("data", list);
		map1.put("totalCount", totalCount);
		map1.put("page", page);
		return map1;
	}
	
	@RequestMapping(value = "/admin/seller/{user_id}", method = RequestMethod.PUT)
	@ResponseBody
	public Map update2(@PathVariable String user_id, @RequestBody SellerVO seller) {
		seller.setUser_id(user_id);
		this.sellerService.updateBoard(seller);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", Boolean.TRUE);
		return map;
	}
	
	@RequestMapping(value = "/admin/newseller", method = RequestMethod.GET)
	@ResponseBody
	public Map list() {
		Map<String, Object> map = new HashMap<String, Object>();
		this.sellerService.selectNew(map);
		List<SellerVO> list = (List<SellerVO>)map.get("results");
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("code", "success");
		map1.put("data", list);
		return map1;
	}
	
	
	@RequestMapping(value = "/admin/sellerappr/{user_id}", method = RequestMethod.PUT)
	@ResponseBody
	public Map approve(@PathVariable String user_id, @RequestBody SellerVO seller) {
		seller.setUser_id(user_id);
		this.sellerService.approveSeller(seller);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", Boolean.TRUE);
		return map;
	}
	
	@RequestMapping(value = "/admin/sellerrej/{user_id}", method = RequestMethod.PUT)
	@ResponseBody
	public Map reject(@PathVariable String user_id, @RequestBody SellerVO seller) {
		seller.setUser_id(user_id);
		this.sellerService.updateBoard(seller);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", Boolean.TRUE);
		return map;
	}
}
