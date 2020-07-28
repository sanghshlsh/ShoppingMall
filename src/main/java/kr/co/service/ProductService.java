package kr.co.service;


import java.util.Map;

import kr.co.domain.ProductDTO;

public interface ProductService {

	void insert(ProductDTO pdto);

	Map readList(int i);


}