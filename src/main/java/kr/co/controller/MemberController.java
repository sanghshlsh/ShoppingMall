package kr.co.controller;

import java.io.PrintWriter;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.domain.LoginDTO;
import kr.co.domain.MemberDTO;
import kr.co.domain.PageTO;
import kr.co.service.MemberService;


@Controller
@RequestMapping("member")
@SessionAttributes ({"login"})

public class MemberController {
	
	
	@Inject
	private MemberService mService;
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)

	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:/member/list";

	}
	
	// 로그인 submit
	@RequestMapping(value = "/loginpost", method = RequestMethod.POST) 
	public String loginpost(LoginDTO login, Model model, HttpSession session) {
		
		MemberDTO dto = mService.loginpost(login);
		
		if (dto != null) {
			model.addAttribute("login", dto);
			String path = (String) session.getAttribute("path");
			if (path != null) {
				return "redirect:"+path;
			}
			
			return "redirect:/member/list";
		} else {
			return "redirect:/member/login";
		}
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	
	public void login() {
		
	}
	 
    // 아이디 중복 체크
	
	@ResponseBody
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	public int idcheck(MemberDTO dto) {
		
		int result = mService.idcheck(dto);
		return result;
	}

	
	 // 회원 가입 get
	  
	  @RequestMapping(value = "/insert", method = RequestMethod.GET) public String
	 insert() { 
		  
		  return "member/insert"; }
	 
	
	  // 회원 가입 post
	  
	  @RequestMapping(value = "/insert", method = RequestMethod.POST) public String
	  insert(MemberDTO dto) {
	  
		  mService.insert(dto);
	  
	  return "redirect:/member/list"; }
	



	// 검색기능
	@RequestMapping(value = "/searchlist")
	public String serchlist(Model model, String searchType, String keyword) {
		
		List<MemberDTO> list= mService.searchlist(searchType, keyword);
		model.addAttribute("list", list);
		model.addAttribute("searchType", searchType);
	
		return "member/searchlist";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model, String curPage) {
		
		int page = -1;
		if (curPage!=null) {
			page = Integer.parseInt(curPage);
		} else {
			page = 1;
		}
		
		PageTO<MemberDTO> mto = new PageTO<MemberDTO>(page);
		
		mto = mService.list(mto);
		
		model.addAttribute("mto", mto);
		model.addAttribute("list", mto.getList());
		
	}
	
	
	
	@RequestMapping(value = "/delete/{memberno}" , method = RequestMethod.GET)
	public String delete(@PathVariable("memberno") int memberno) {
		
		mService.delete(memberno);
		
		return "redirect:/member/list";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(MemberDTO to) {
		mService.update(to);
	
		return "redirect:/member/read/"+to.getMemberNo();
	}
	
	@RequestMapping(value = "/update/{memberno}", method = RequestMethod.GET)
	public String update(@PathVariable("memberno") int memberno, Model model) {
		MemberDTO to = mService.updateUI(memberno);
		model.addAttribute("to", to);
		return "/member/update";
	}
	
	
	@RequestMapping(value = "/read/{memberno}", method = RequestMethod.GET)
	public String read(@PathVariable("memberno") int memberno, Model model) {
		MemberDTO to = mService.read(memberno);
		 model.addAttribute("to", to);
		 return "/member/read";
	}
}

