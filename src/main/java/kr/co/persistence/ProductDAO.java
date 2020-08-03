package kr.co.persistence;

import java.util.List;
import java.util.Map;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.ProductOptionDTO;

public interface ProductDAO {

	List<CategoryDTO> categoryList();

	List<CategoryDTO> categoryListN(CategoryDTO categoryDto);

	void insert(ProductDTO productDto);

	void addAttach(String fullName, int productNo);

	void insertProductOption(ProductOptionDTO productOptionDTO);


}