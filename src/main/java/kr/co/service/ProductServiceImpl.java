package kr.co.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public Map readList(int i) {
		
		return productDao.list();
	}


}