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
import org.springframework.web.servlet.ModelAndView;

import com.sun.istack.internal.logging.Logger;

import store.fnfm.service.NoticeService;
import store.fnfm.vo.NoticeVO;

@Controller
public class NoticeController {
	private static Logger logger = Logger.getLogger(NoticeController.class);
	@Autowired
	NoticeService noticeService;
	
	
	/*@Autowired
	FileUploadService fileUploadService;*/
	
	/*@Resource(name = "uploadPath")
	private String uploadPath;  //File upload 경로
*/
	//데이터입력
	@RequestMapping(value = "/cs/noticewrite", method = RequestMethod.POST)
	@ResponseBody
	public Map insert(@RequestBody NoticeVO noticeVo) {
		System.out.println(noticeVo);
		Map<String, Object> result = new HashMap<String, Object>();
		String title = noticeVo.getTitle();
		title = title.replaceAll("<", "&lt;");
		title = title.replaceAll(">", "&gt;");
		title = title.replaceAll("'", "''");
		noticeVo.setTitle(title);

		String contents = noticeVo.getContents();
		contents = contents.replaceAll("\r\n", "<br />");
		contents = contents.replaceAll("<", "&lt;");
		contents = contents.replaceAll(">", "&gt;");
		contents = contents.replaceAll("'", "''");
		noticeVo.setContents(contents);
		this.noticeService.insertBoard(noticeVo);
		result.put("code", Boolean.TRUE);
		return result;
	}
	
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
			this.noticeService.selectBoard(map);
			List<NoticeVO> list = (List<NoticeVO>)map.get("result");
			NoticeVO noticeVo = list.get(0);
			String title = noticeVo.getTitle();
			title = title.replace("&lt;", "<");
			title = title.replace("&gt;", ">");
			title = title.replace("''", "'");
			noticeVo.setTitle(title);
			
			String contents = noticeVo.getContents();
			contents = contents.replace("&lt;", "<");
			contents = contents.replace("&gt;", ">");
			contents = contents.replace("''", "'");
			contents = contents.replace("<br />", "\r\n");
			noticeVo.setContents(contents);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("data", noticeVo);
			mav.addObject("page", page);
			mav.setViewName("noticeview");
			return mav;
		}
		
		//update띄우기
		@RequestMapping(value = "/cs/update/{page}/{idx}", method = RequestMethod.GET)
		@ResponseBody 
		public ModelAndView updateread(@PathVariable int page, @PathVariable int idx) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("idx", idx);
			this.noticeService.selectBoard(map);
			List<NoticeVO> list = (List<NoticeVO>)map.get("result");
			NoticeVO noticeVo = list.get(0);
			String title = noticeVo.getTitle();
			title = title.replace("&lt;", "<");
			title = title.replace("&gt;", ">");
			title = title.replace("''", "'");
			noticeVo.setTitle(title);
			
			String contents = noticeVo.getContents();
			contents = contents.replace("&lt;", "<");
			contents = contents.replace("&gt;", ">");
			contents = contents.replace("''", "'");
			contents = contents.replace("<br />", "\r\n");
			noticeVo.setContents(contents);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("data", noticeVo);
			mav.addObject("page", page);
			mav.setViewName("noticeupdate");
			return mav;
		}
		
		@RequestMapping(value = "/cs/{idx}", method = RequestMethod.PUT)
		@ResponseBody
		public Map update(@PathVariable int idx, @RequestBody NoticeVO noticeVo) {
			System.out.println(noticeVo);
			noticeVo.setIdx(idx);
			this.noticeService.updateBoard(noticeVo);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("code", Boolean.TRUE);
			return map;
		}
		
		//delete
		@RequestMapping(value = "/cs/{idx}", method = RequestMethod.DELETE)
		@ResponseBody
		public Map delete(@PathVariable int idx) {
			this.noticeService.deleteBoard(idx);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("code", Boolean.TRUE);
			return map;
		}
}
