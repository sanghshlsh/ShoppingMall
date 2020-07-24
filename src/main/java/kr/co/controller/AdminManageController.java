package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin")
public class AdminManageController {
	
	@RequestMapping(value = "/manage/index", method = RequestMethod.GET)
	public void adminManageIndex() {
	}
	
	@RequestMapping(value = "/product/list", method = RequestMethod.GET)
	public void adminProduct() {		
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void adminIndex() {		
	}
}