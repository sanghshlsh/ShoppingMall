package kr.co.service;


import java.util.List;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;

public interface ProductService {

	void insert(ProductDTO productDto);

	void deleteAttachByFileName(String filename);

	List<String> getAttach(Integer productNo);

	List<CategoryDTO> categoryList();

	List<CategoryDTO> categoryListN(CategoryDTO categoryDto);

	List<ProductDTO> productList();

	String getCategoryName(CategoryDTO categoryDto);

	ProductDTO updateUI(int productNo);


}