package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.ProductOptionDTO;
import kr.co.persistence.ProductDAO;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDao;

	@Override
	public void insert(ProductDTO productDto) {
		productDao.insert(productDto);
		String[] files = productDto.getFiles();
		if(files != null) {  
			for(String fullName : files) {	
				productDao.addAttach(fullName, productDto.getProductNo());
			}			
		}
		List<ProductOptionDTO> list = productDto.getProductOptionList();
		if( list != null) {
			for (ProductOptionDTO productOptionDTO : list) {
				if(productOptionDTO.getProductQuantity()!=0){
					productOptionDTO.setProductNo(productDto.getProductNo());
					productDao.insertProductOption(productOptionDTO);
				}
			}
		}
		
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
	@Override
	public List<ProductDTO> productList() {
		// TODO Auto-generated method stub
		return productDao.productList();
	}
	@Override
	public String getCategoryName(CategoryDTO categoryDto) {
		
		return productDao.getCategoryName(categoryDto);
	}
}