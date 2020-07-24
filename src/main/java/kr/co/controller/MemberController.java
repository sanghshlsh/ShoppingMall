package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.MemberDTO;
=======
import org.springframework.web.bind.annotation.SessionAttributes;

>>>>>>> fetch_head
import kr.co.service.MemberService;

@Controller
@RequestMapping("member")
<<<<<<< HEAD
=======
@SessionAttributes
>>>>>>> fetch_head
public class MemberController {
	
	@Autowired
	private MemberService memberService;
<<<<<<< HEAD
	
	// 회원 가입 get
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "member/insert";
	}
	
	// 회원 가입 post
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(MemberDTO dto) {
		
		memberService.insert(dto);
		
	 return "redirect:/member/list";
	}
	
	

}
=======

}
>>>>>>> fetch_head
