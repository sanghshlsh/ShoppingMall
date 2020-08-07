package kr.co.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.ProductOptionDTO;
import kr.co.service.ProductService;

@Controller
public class AdminProductController {

	@Autowired
	private ProductService productService;
	@RequestMapping(value ="/admin/product/insert", method = RequestMethod.GET)
	public void insert() {
	}
	
	@RequestMapping(value ="/admin/product/insert", method = RequestMethod.POST)
	public String insert(ProductDTO productDto) {
		productService.insert(productDto);
		
		return "redirect:/admin/product/insert";
	}
	
	@RequestMapping(value ="/admin/product/list")
	public void list() {
	}
	
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
	
	@ResponseBody
	@RequestMapping(value ="/getCategoryName", method = RequestMethod.GET)
	public String getCategoryName(CategoryDTO categoryDto) {
		String categoryName = productService.getCategoryName(categoryDto);

		return categoryName;
	}
	
	@RequestMapping(value ="/admin/product/update/{productNo}")
	public String updateUI(Model model, @PathVariable("productNo") int productNo) {
		ProductDTO productDTO = productService.updateUI(productNo);
		model.addAttribute("productDTO",productDTO );
		
		return "/admin/product/update";
	}
	@ResponseBody
	@RequestMapping(value ="/product_Category_list", method = RequestMethod.POST)
	public List<CategoryDTO> CategoryList() {
		List<CategoryDTO> list = productService.categoryList();

		return list;
	}
	
	@RequestMapping(value ="/admin/product/test")
	public void test() {
	}
	@ResponseBody
	@RequestMapping(value ="/product_category_list_update", method = RequestMethod.GET)
	public List<CategoryDTO> categoryListUpdate(CategoryDTO categoryDto, ProductDTO productDto) {
		
		List<CategoryDTO> list = productService.categoryListUpdate(categoryDto, productDto);
		return list;
	}
	@RequestMapping(value ="/admin/product/update", method = RequestMethod.POST)
	public String update(ProductDTO productDto) {
		productService.update(productDto);
		
		return "redirect:/admin/product/list";
		
	}
}
