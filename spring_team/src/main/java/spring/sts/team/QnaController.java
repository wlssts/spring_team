package spring.sts.team;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.qna.QnaDAO;
import spring.model.qna.QnaDTO;
import spring.sts.utility.Utility;

@Controller
public class QnaController {
	
	@Autowired
	private QnaDAO dao;
	
	@RequestMapping("/qna/list")
	public String list(HttpServletRequest request) {
		String col = Utility.checkNull(request.getParameter("col")); // null인 경우도 허용하는 메소드
		String word = Utility.checkNull(request.getParameter("word")); // 가장 첫페이지인 리스트에서 col, word값을 받기 위해
		if (col.equals("total")) { // 전체출력은 word값 공란 허용
			word = "";
		}
		// 페이지관련
		int nowPage = 1; // 현재 보고있는 페이지
		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int recordPerPage = 10; // 한 페이지당 보여줄 레코드 갯수
		// DB에서 데이터를 가져올 순번
		int sno = ((nowPage - 1) * recordPerPage);
		int eno = recordPerPage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);

		List<QnaDTO> list = dao.list(map); // 맵을 매개로 list객체 생성
		int totalRecord = dao.total(map); // 맵을 매개로 전체출력 메소드 호출해 값을 totalRecord로 저장
		String paging = Utility.paging2("list", totalRecord, nowPage, recordPerPage, col, word);

		// 4. 결과를 request 또는 session의 setAttribute()메소드를 사용하여 저장
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		return "support_qna/list.tiles";
	}
	@RequestMapping("qna/passCheck")
	public String passwdCheck(Model model, int qnano, String passwd, String col, String word, int nowPage) {
		System.out.println("dddd:::::::::::: passwdCheck");
		boolean pflag = false;
		Map map = new HashMap();
		map.put("qnano", qnano);
		map.put("passwd",passwd);
		pflag = dao.passwdCheck(map);
		System.out.println("pflag @@@@@@@@@ : " + pflag);
		System.out.println("qnano @@@@@@@@@ : " + qnano);
		System.out.println("passwd @@@@@@@@@ : " + passwd);
		System.out.println("col @@@@@@@@@ : " + col);
		System.out.println("nowPage @@@@@@@@@ : " + nowPage);
		if(pflag) {
		String url = "qna/read";
		return url;
		} else {
			return "redirect:list";
		}
	}
	
	@RequestMapping("qna/read")
	public String read(Model model, QnaDTO dto) {
		
		dto = dao.read(dto.getQnano());							//글읽어오기
		model.addAttribute("dto", dto);
		
		return "support_qna/read.tiles";
		
		
	}
	
	@RequestMapping("qna/checkForm")
	public String checkForm(QnaDTO dto, Model model) {
		
		return "support_qna/checkForm.tiles";
	}
}
