package spring.sts.team;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.member.MemberDAO;
import spring.model.member.MemberVO;
import spring.sts.utility.SecurityUtil;

/**
 * Handles requests for the application home page.
 */
@Controller

public class MemberController {

	@Autowired
	private MemberDAO dao;

	@RequestMapping(value = "/member/agreement", method = RequestMethod.GET)
	public String agreement() {

		return "member/agreement.tiles";
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.GET)
	public String create() {

		return "member/create.tiles";
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.POST)
	public String create(MemberVO vo) {

		boolean flag = false;
		SecurityUtil securityUtil = new SecurityUtil();
		String rtn1 = securityUtil.encryptSHA256(vo.getPasswd());
		vo.setPasswd(rtn1);

		// 회원가입시 비밀번호를 SHA-256 으로 SALT 이용해 암호화 하기
		/*
		 * String salt = SHA256Util.generateSalt(); String newPassword =
		 * SHA256Util.getEncrypt(vo.getPasswd(), salt); vo.setPasswd(newPassword);
		 * vo.setSalt(salt);
		 */

		flag = dao.create(vo);
		System.out.println("vo:" + vo.getPasswd());

		if (flag) {
			return "redirect:login";
		} else {
			return "error/error";
		}
	}

	@RequestMapping(value = "/member/id_proc")
	public String idCheck(String id, Model model) {
		model.addAttribute("flag", dao.duplicateId(id));
		return "member/id_proc";
	}

	@RequestMapping(value = "/member/email_proc")
	public String emailCheck(String email, Model model) {
		model.addAttribute("flag", dao.duplicateEmail(email));
		return "member/email_proc";
	}

	@RequestMapping(value = "/member/login_proc")
	public String login_proc(Model model, HttpServletRequest request, MemberVO vo) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		SecurityUtil securityUtil = new SecurityUtil();
		String rtn1 = securityUtil.encryptSHA256(passwd);
		vo.setPasswd(rtn1);

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("passwd", vo.getPasswd());

		boolean flag = dao.loginCheck(map);
		model.addAttribute("flag", flag);
		return "member/login_proc";
	}

	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response, Model model, MemberVO vo) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		boolean flag = false;

		SecurityUtil securityUtil = new SecurityUtil();
		String rtn1 = securityUtil.encryptSHA256(passwd);
		vo.setPasswd(rtn1);

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("passwd", vo.getPasswd());

		flag = dao.loginCheck(map);
		String grade = null;// 회원등급
		if (flag) {// 회원인경우
			grade = dao.getGrade(id);
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("grade", grade);

			// ----------------------------------------------
			// Cookie 저장, Checkbox는 선택하지 않으면 null 임
			// ----------------------------------------------
			Cookie cookie = null;
			String c_id = request.getParameter("c_id"); // Y, 아이디 저장 여부

			if (c_id != null) { // 처음에는 값이 없음으로 null 체크로 처리
				cookie = new Cookie("c_id", "Y"); // 아이디 저장 여부 쿠키
				cookie.setMaxAge(120); // 2 분 유지
				response.addCookie(cookie); // 쿠키 기록

				cookie = new Cookie("c_id_val", id); // 아이디 값 저장 쿠키
				cookie.setMaxAge(120); // 2 분 유지
				response.addCookie(cookie); // 쿠키 기록

			} else {
				cookie = new Cookie("c_id", ""); // 쿠키 삭제
				cookie.setMaxAge(0);
				response.addCookie(cookie);

				cookie = new Cookie("c_id_val", ""); // 쿠키 삭제
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			// ---------------------------------------------
		} else {
			return "member/login.tiles";
		}

		return "redirect:/";
	}

	@RequestMapping(value = "member/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		String c_id = ""; // ID 저장 여부를 저장하는 변수, Y
		String c_id_val = ""; // ID 값

		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];

				if (cookie.getName().equals("c_id")) {
					c_id = cookie.getValue(); // Y
				} else if (cookie.getName().equals("c_id_val")) {
					c_id_val = cookie.getValue(); // user1...
				}
			}
		}

		request.setAttribute("c_id", c_id);
		request.setAttribute("c_id_val", c_id_val);

		return "member/login.tiles";
	}

	@RequestMapping("member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
