package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

	@RequestMapping(value="/manager/product/list", method = RequestMethod.GET)
	public void managerProduct() {		
	}
	@RequestMapping(value="/manager/index", method = RequestMethod.GET)
	public void managerIndex() {		
	}
}