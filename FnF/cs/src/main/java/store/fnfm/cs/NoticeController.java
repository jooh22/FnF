package store.fnfm.cs;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.sun.istack.internal.logging.Logger;

import store.fnfm.service.FileUploadService;
import store.fnfm.service.NoticeService;
import store.fnfm.vo.FaqVO;
import store.fnfm.vo.NoticeVO;

@Controller
public class NoticeController {
	private static Logger logger = Logger.getLogger(NoticeController.class);
	@Autowired
	NoticeService noticeService;
	
	
	@Autowired
	FileUploadService fileUploadService;
	
	//리스트
		@RequestMapping(value = "/cs/{page}", method = RequestMethod.POST)
		@ResponseBody
		public Map list(@PathVariable int page) {
			Map<String, Object> countMap = new HashMap<String, Object>();
			this.noticeService.getTotalCount(countMap);
			int totalCount = (Integer) countMap.get("result");
			int pageSize = 10;
			int totalPage = (totalCount % pageSize == 0) ? totalCount / pageSize : totalCount / pageSize + 1;
			if (totalPage < page)
				page = totalPage;
			int pageCount = 10; // 한 페이지에 뿌려줄 수 있는 갯수는 10개씩

			int start = (page - 1) * pageCount + 1; // 11
			int end = start + pageCount - 1; // 20

			int startPage = ((page - 1) * pageCount / pageCount) + 1; // 2
			int endPage = startPage + pageCount - 1; // 11

			if (endPage > totalPage)
				endPage = totalPage;

			Map<String, Object> results = new HashMap<String, Object>(); // 전체 레코드
			results.put("start", start);
			results.put("end", end);
			this.noticeService.select(results);
			List<NoticeVO> list = (List<NoticeVO>) results.get("results");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("code", Boolean.TRUE);
			map.put("startPage", startPage);
			map.put("endPage", endPage);
			map.put("totalPage", totalPage);
			map.put("pageSize", pageSize);
			map.put("page", page);
			map.put("data", list);
			return map;
		}
		
		//하나만 읽기
		@RequestMapping(value = "/cs/{page}/{idx}", method = RequestMethod.GET)
		@ResponseBody 
		public ModelAndView read(@PathVariable int page, @PathVariable int idx) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("idx", idx);
			this.noticeService.readnum(idx);
			this.noticeService.selectBoard(map);
			List<NoticeVO> list = (List<NoticeVO>)map.get("result");
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("data", list.get(0));
			mav.addObject("page", page);
			mav.setViewName("cs/noticeview");
			return mav;
		}
		
		//Search List
			@RequestMapping(value = "/cs/search/{page}", method = RequestMethod.POST)
			@ResponseBody
			public Map searchlist(@PathVariable int page, @RequestBody NoticeVO noticeVo) {
				//System.out.println("search");
//					System.out.println("id = "+qaaVo.getUser_id());
//					System.out.println("title = "+qaaVo.getTitle());
//					System.out.println("contents = "+qaaVo.getContents());
//					return null;
				Map<String, Object> countMap = new HashMap<String, Object>();
				countMap.put("user_id", noticeVo.getUser_id());
				countMap.put("title", noticeVo.getTitle());
				countMap.put("contents", noticeVo.getContents());
				
				this.noticeService.searchCount(countMap);
				int totalCount = (Integer) countMap.get("result");
				int pageSize = 10;
				int totalPage = (totalCount % pageSize == 0) ? totalCount / pageSize : totalCount / pageSize + 1;
				if (totalPage < page)
					page = totalPage;
				int pageCount = 10; // 한 페이지에 뿌려줄 수 있는 갯수는 10개씩
				int start = (page - 1) * pageCount + 1; // 11
				int end = start + pageCount - 1; // 20
				int startPage = ((page - 1) * pageCount / pageCount) + 1; // 2
				int endPage = startPage + pageCount - 1; // 11
				if (endPage > totalPage)
					endPage = totalPage;

				Map<String, Object> results = new HashMap<String, Object>(); // 전체 레코드
				results.put("user_id", noticeVo.getUser_id());
				results.put("title", noticeVo.getTitle());
				results.put("contents", noticeVo.getContents());
				results.put("start", start);
				results.put("end", end);
				
				this.noticeService.search(results);
				List<NoticeVO> list = (List<NoticeVO>) results.get("results");
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("code", Boolean.TRUE);
				map.put("startPage", startPage);
				map.put("endPage", endPage);
				map.put("totalPage", totalPage);
				map.put("pageSize", pageSize);
				map.put("page", page);
				map.put("data", list);
				return map;
			}
}
