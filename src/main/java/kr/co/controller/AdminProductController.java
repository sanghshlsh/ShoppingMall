package kr.co.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.ProductOptionDTO;
import kr.co.service.ProductService;

@Controller
public class AdminProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value ="/admin/product/insert", method = RequestMethod.POST)
	public String insert(ProductDTO productDto) {
		List<ProductOptionDTO> list = productDto.getProductOptionList();
		if (list == null) {
			System.out.println("옵션넣어라 작업하기");
			return "redirect:/admin/product/insert";
		}
		productService.insert(productDto);
		
			
		return "redirect:/admin/product/insert";
	}
	
	@RequestMapping(value ="/admin/product/insert")
	public void insert() {
	}
	@RequestMapping(value ="/admin/product/list")
	public void list() {
	}
	
//	@RequestMapping("/admin/product/list")
//	public ModelAndView productList() throws Exception {
//		ModelAndView model = new ModelAndView();
//		Map list = productService.readList(1);
//		model.addObject("productList", list.get("productList"));
//		//model.setViewName("product/list");
//		return model;
//	}
//	@RequestMapping("/admin/product/modification")
//	public ModelAndView productModify() {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("product/modification");
//		return model;
//	}
//	@RequestMapping("/admin/product/registration")
//	public ModelAndView productRegistration() {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("product/registration");
//		return model;
//	}
	@ResponseBody
	@RequestMapping(value ="/product_Category", method = RequestMethod.GET)
	public List<CategoryDTO> category() {
		List<CategoryDTO> list = productService.categoryList();

		return list;
	}
	
	@ResponseBody
	@RequestMapping(value ="/product_CategoryN", method = RequestMethod.GET)
	public List<CategoryDTO> category2(CategoryDTO categoryDto) {
		List<CategoryDTO> list = productService.categoryListN(categoryDto);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value ="/product_List", method = RequestMethod.GET)
	public List<ProductDTO> productList() {
		List<ProductDTO> list = productService.productList();

		return list;
	}
}
