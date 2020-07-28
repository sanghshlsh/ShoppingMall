package kr.co.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.ProductDTO;
import kr.co.service.ProductService;

@Controller
public class AdminProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value ="/admin/product/insert", method = RequestMethod.GET)
	public String insertProduct(ProductDTO pdto) {
		productService.insert(pdto);
		return "redirct:/admin/insert";
	}
	
	@RequestMapping("/admin/product/list")
	public ModelAndView productList() throws Exception {
		ModelAndView model = new ModelAndView();
		Map list = productService.readList(1);
		model.addObject("productList", list.get("productList"));
		//model.setViewName("product/list");
		return model;
	}
	@RequestMapping("/admin/product/modification")
	public ModelAndView productModify() {
		ModelAndView model = new ModelAndView();
		model.setViewName("product/modification");
		return model;
	}
	@RequestMapping("/admin/product/registration")
	public ModelAndView productRegistration() {
		ModelAndView model = new ModelAndView();
		model.setViewName("product/registration");
		return model;
	}
	
	
}
