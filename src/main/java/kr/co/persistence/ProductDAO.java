package kr.co.persistence;

import java.util.List;
import java.util.Map;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;

public interface ProductDAO {

	void insert(ProductDTO pdto);

	Map list();

	List<CategoryDTO> categoryList();

	List<CategoryDTO> categoryListN(CategoryDTO categoryDto);


}