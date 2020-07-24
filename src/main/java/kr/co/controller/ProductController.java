package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.ProductService;

@Controller
public class ProductController {

	@Inject
	ProductService productService;
	
	@RequestMapping(value="/admin/index", method = RequestMethod.GET)
	public void adminIndex() {		
	}
	
	@RequestMapping(value="/admin/product/list", method = RequestMethod.GET)
	public void adminProduct() {		
	}
	
}