package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestMethod;
=======

import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.MemberDTO;

>>>>>>> 6a600f9a90ed58e862e657a3fd5de12c7c668d01
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.domain.MemberDTO;
import kr.co.service.MemberService;

@Controller
@RequestMapping("member")
@SessionAttributes

public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
<<<<<<< HEAD
=======
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
>>>>>>> 6a600f9a90ed58e862e657a3fd5de12c7c668d01

