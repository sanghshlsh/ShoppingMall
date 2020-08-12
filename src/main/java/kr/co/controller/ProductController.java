package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ProductDTO;
import kr.co.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/admin/product/insert", method = RequestMethod.GET)
	public String insertProduct(ProductDTO pdto) {
		productService.insert(pdto);
		return "redirct:/admin/insert";
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public void productIndex() {

	}

//	@RequestMapping(value = "/product", method = RequestMethod.GET)
//	public void productIndex() {
//	}
//
//	@RequestMapping(value="/admin/default/index", method = RequestMethod.GET)
//	public void adminIndex() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/blank", method = RequestMethod.GET)
//	public void adminBlank() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/buttons", method = RequestMethod.GET)
//	public void adminButtons() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/cards", method = RequestMethod.GET)
//	public void adminCards() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/tables", method = RequestMethod.GET)
//	public void adminTables() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/charts", method = RequestMethod.GET)
//	public void adminCharts() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/animation", method = RequestMethod.GET)
//	public void adminAniamtion() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/boarder", method = RequestMethod.GET)
//	public void adminBoarder() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/color", method = RequestMethod.GET)
//	public void adminColor() {
//		//필요x
//	}
//	@RequestMapping(value="/admin/default/other", method = RequestMethod.GET)
//	public void adminOther() {
//		//필요x
//
//	}


	
	@RequestMapping(value="/admin/default/main", method = RequestMethod.GET)
	public void adminMain() {
		//필요x
	}
	/*
	 * @RequestMapping(value = "/admin/product/insert", method = RequestMethod.GET)
	 * public String insertProduct(ProductDTO pdto) { productService.insert(pdto);
	 * return "redirct:/admin/insert"; }
	 */



}