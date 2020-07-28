package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("customerservice")


public class CustomerServiceController {
	
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main() {
		
	}
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public void faq() {
		
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qna() {
		
	}
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public void notice() {
		
	}
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public void inquiry() {
		
	}
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public void event() {
		
	}
	@RequestMapping(value = "/winner", method = RequestMethod.GET)
	public void winner() {
		
	}
}

