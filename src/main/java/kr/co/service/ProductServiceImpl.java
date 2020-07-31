package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDao;

	@Override
	public void insert(ProductDTO pdto) {
		// TODO Auto-generated method stub
		productDao.insert(pdto);
	}
	
	@Override
	public void deleteAttachByFileName(String filename) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<String> getAttach(Integer productNo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<CategoryDTO> categoryList() {
		// TODO Auto-generated method stub
		return productDao.categoryList();
	}
	
	@Override
	public List<CategoryDTO> categoryListN(CategoryDTO categoryDto) {
		// TODO Auto-generated method stub
		return  productDao.categoryListN(categoryDto);
	}

}