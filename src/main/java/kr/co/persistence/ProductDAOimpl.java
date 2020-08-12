package kr.co.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.CategoryDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.ProductOptionDTO;

@Repository
public class ProductDAOimpl implements ProductDAO {

	@Autowired
	private SqlSession session;
	
	private final String NS = "p.r.o";

	@Override
	public void insert(ProductDTO productDto) {
		int productNo = session.selectOne(NS+".getProductNo");
		productDto.setProductNo(productNo);
		session.insert(NS+".insert", productDto);
		 
	}
	
	@Override
	public void addAttach(String fullName, int productNo) {	
		int attachNo = session.selectOne(NS+".getAttachNo");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("attachNo", attachNo);
		map.put("fullName", fullName);
		map.put("productNo", productNo);
		session.insert(NS+".addAttach", map);
	}
	@Override
	public List<CategoryDTO> categoryList() {
		return session.selectList(NS+".categoryList");
	}
	
	@Override
	public List<CategoryDTO> categoryListN(CategoryDTO categoryDto) {
		return session.selectList(NS+".categoryList2",categoryDto);
	}
	
	@Override
	public void insertProductOption(ProductOptionDTO productOptionDTO) {
		int productOptionNo = session.selectOne(NS+".getProductOptionNo");
		productOptionDTO.setProductOptionNo(productOptionNo);
		session.insert(NS+".insertProductOption", productOptionDTO);		
	}
	@Override
	public List<ProductDTO> productList() {
			
		return session.selectList(NS+".productList");
	}
	@Override
	public String getCategoryName(CategoryDTO categoryDto) {
	
		return session.selectOne(NS+".getCategoryName", categoryDto);
	}
	@Override
	public ProductDTO updateUI(int productNo) {
	
		 ProductDTO productDTO = session.selectOne(NS+".updateUI",productNo);
		 List<ProductOptionDTO> productOptionList = session.selectList(NS+".getProductOptionList", productNo);
		 productDTO.setProductOptionList(productOptionList);
		 return productDTO;
	}
	@Override
	public List<String> getAttach(Integer productNo) {
	
		return session.selectList(NS + ".getAttach", productNo);
	}
	@Override
	public List<CategoryDTO> categoryListUpdate(CategoryDTO categoryDto, ProductDTO productDto) {
		int categoryNo = session.selectOne(NS+".getCategoryNo", productDto);
		
		if(categoryDto.getCategoryDegree()==2)
			categoryDto.setCategoryNoRef((categoryNo/100)*100);
		else if(categoryDto.getCategoryDegree()==3)
			categoryDto.setCategoryNoRef((categoryNo/10)*10);
		
		return session.selectList(NS+".categoryListUpdate", categoryDto);
	}
	@Override
	public void update(ProductDTO productDto) {
		session.update(NS + ".update", productDto);
		
	}
	@Override
	public void deleteAttachByProductNo(int productNo) {
		session.delete(NS + ".deleteAttachByProductNo", productNo);
		
	}
	@Override
	public void deleteProductOptionByProductNo(int productNo) {
		session.delete(NS + ".deleteProductOptionByProductNo", productNo);
		
	}
	
}