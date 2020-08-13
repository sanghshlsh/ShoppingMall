package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

<<<<<<< HEAD

import kr.co.service.ProductService;
=======
import kr.co.service.ProductService;

>>>>>>> fetch_head

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

<<<<<<< HEAD
=======

	/*
	 * @RequestMapping(value = "/admin/product/insert", method = RequestMethod.GET)
	 * public String insertProduct(ProductDTO pdto) { productService.insert(pdto);
	 * return "redirct:/admin/insert"; }
	 */
>>>>>>> fetch_head

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public void productIndex() {

<<<<<<< HEAD


=======
>>>>>>> fetch_head
	}
}