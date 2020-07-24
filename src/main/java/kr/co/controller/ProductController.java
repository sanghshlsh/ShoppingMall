package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

	@RequestMapping(value="/admin/product/list", method = RequestMethod.GET)
	public void adminProduct() {		
	}
	@RequestMapping(value="/admin/index", method = RequestMethod.GET)
	public void adminIndex() {		
	}
}