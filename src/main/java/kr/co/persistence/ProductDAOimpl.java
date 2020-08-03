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
		Integer productNo = session.selectOne(NS+".getProductNo");
		if (productNo != null) {
			productNo += 1;
		} else {
			productNo = 1;
		}
		productDto.setProductNo(productNo);
		session.insert(NS+".insert", productDto);
		
	}
	
	@Override
	public void addAttach(String fullName, int productNo) {
		Integer attachNo = session.selectOne(NS+".getAttachNo");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("attachNo", attachNo);
		map.put("fullName", fullName);
		map.put("productNo", productNo);
		session.insert(NS+".addAttach", map);
	}
	@Override
	public List<CategoryDTO> categoryList() {
		// TODO Auto-generated method stub
		return session.selectList(NS+".categoryList");
	}
	
	@Override
	public List<CategoryDTO> categoryListN(CategoryDTO categoryDto) {
		// TODO Auto-generated method stub
		return session.selectList(NS+".categoryList2",categoryDto);
	}
	
	@Override
	public void insertProductOption(ProductOptionDTO productOptionDTO) {
		Integer productOptionNo = session.selectOne(NS+".getProductOptionNo");
		if (productOptionNo != null) {
			productOptionNo += 1;
		} else {
			productOptionNo = 1;
		}
		productOptionDTO.setProductNo(productOptionNo);
		session.insert(NS+".insertProductOption", productOptionDTO);
		
	}
}